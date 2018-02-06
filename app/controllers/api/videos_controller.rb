class Api::VideosController < ApplicationController
  def index
    render json: Video.all
  end

  def show
    video = Video.find_by(id: params["id"])
    render json: video
  end
end
