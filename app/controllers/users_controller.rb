class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params

    
    if params[:user][:photo_url].present?
      response = Cloudinary::Uploader.upload params[:user][:photo_url]
      @user.photo_url = response['public_id']
    end
    
    @user.save
    
    if @user.persisted?
      session[:user_id] = @user.id
      redirect_to users_path
    else
      flash[:error] = 'Invalid email or password'
      render :new
    end
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find params[:id]
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    user = User.find params[:id]
    user.update! user_params
    redirect_to user_path(params[:id])
  end

  def destroy
    User.destroy params[:id]
    redirect_to users_path
  end

  private
  def user_params
    params.require(:user).permit(
      :email,
      :name,
      :city,
      :suburb,
      :photo_url,
      :password,
      :password_confirmation
    )
  end
end
