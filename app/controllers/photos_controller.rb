class PhotosController < ApplicationController
  layout 'photo'
  def index
    @photos = Photo.all.order(created_at: 'DESC').limit(10)
  end

  def show
    @photo = Photo.find(params[:id])
  end
end
