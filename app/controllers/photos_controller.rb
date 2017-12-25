class PhotosController < ApplicationController
  layout 'photo'
  def index
    @photos = Photo.pushed.order(created_at: 'DESC')
  end

  def show
    @photo = Photo.find(params[:id])
    @photo.increment!(:visit, 1)
  end
end
