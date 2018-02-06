class Api::VideosController < ApplicationController
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
    video = Video.find_by(id: params["id"])
    render json: video
  end

  private
  def video_params
    params.require(:video).permit(:title, :artist, :youtube_url, :image_url)
  end

end
