class Admin::PhotosController < Admin::BaseController
  def index
    @photos = Photo.all.order(updated_at: 'DESC').page(params[:page])
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      redirect_to admin_photos_path
    else
      render 'new'
    end
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def update
    @photo = Photo.find(params[:id])
    if @photo.update(photo_params)
      flash[:notice] = '更新成功'
      redirect_to admin_photos_path
    else
      render 'edit'
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    if @photo.destroy
      flash[:notice] = '删除成功'
    else
      flash[:notice] = "删除失败, 原因: #{@photo.errors.messages.to_s}"
    end
    redirect_to admin_photos_path
  end

	def upload
		@image = Image.new(img: params[:file])
		if @image.save
			render json: { success: true, msg: '上传成功', file_path: @image.img.url, status: 200 }
		else
			render json: { success: false, status: 501 }
		end
	end

  private
  def photo_params
    params.require(:photo).permit(:title, :subtitle, :content)
  end
end
