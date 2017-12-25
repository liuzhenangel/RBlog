class PhotosController < ApplicationController
  layout 'photo'
  def index
    @photos = Photo.pushed.order(created_at: 'DESC')
  end

  def show
    @photo = Photo.find(params[:id])
  end
end
