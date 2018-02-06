class Api::VideosController < ApplicationController
  def index
    render json: Video.all
  end
end
