class PhotosController < ApplicationController
  def index
    @photo = Photo.all
  end

  def show
    @photo = Photo.find params[:id]
  end

  def edit
    @photo = Photo.find params[:id]
  end

  def update
    @photo = Photo.find params[:id]
    @photo.update photo_params
    redirect_to photo_path
  end

  def new
    @photo = Photo.new
  end

  def create 
    response = Cloudinary::Uploader.upload params[:file]
    @photo = Photo.create name: params[:name], image: response["url"]
    redirect_to root_path
  end

  def destroy
    photo = Photo.find params[:id]
    photo.destroy
    redirect_to photos_path
  end

  private
  def photo_params
    params.require(:photo).permit(:name, :user_id, :file, :image, :url)
  end 

end