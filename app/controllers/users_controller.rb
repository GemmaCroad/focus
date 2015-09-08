class UsersController < ApplicationController

  def index
    @user = User.all 
  end

  def show
    @user = User.find params[:id]
  end

  def edit
  	@user = User.find
  end

  def update
    @user = User.find params[:id]
    @user.update user_params
    redirect_to user_path
  end

  def new
    @user = User.new
  end

  def create
       user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end

  # def destroy
  #   user = User.find params[:id]
  #   user.destroy
  #   redirect_to users_path
  # end

  def photos
    @user = User.find params[:user_id]
    @photo = Photo.new
  end

  private
  def user_params
     params.require(:user).permit(:name, :email, :password, :password_confirmation, :hometown, :image, :bio)
  end 

   def check_if_logged_in
  	redirect_to root_path unless @current_user.present?
  end

end