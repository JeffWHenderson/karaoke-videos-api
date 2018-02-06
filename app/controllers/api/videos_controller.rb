class Api::VideosController < ApplicationController
  before_action :set_video, only: [:show, :update, :destroy]

  def index
    render json: Video.all
  end

  def create
    video = Video.new(video_params)

    if video.save
      render json: video
    else
      render json: { message: video.errors }, status: 400
    end
  end

  def show
    render json: @video
  end

  def updated_at
    if @video.update(video_params)
      render json: @video
    else
      render json: { message: @video.errors }, status: 400
    end
  end

  def destroy
    if @video.destroy
      render status: 204
    else
      render json: { message: "unable to delete this video" }, status: 400
    end
  end

  private
  def set_video
    @video = Video.find_by(id: params["id"])
  end

  def video_params
    params.require(:video).permit(:title, :artist, :youtube_url, :image_url)
  end

end
