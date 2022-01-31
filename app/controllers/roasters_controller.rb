class RoastersController < ApplicationController
  before_action :check_if_logged_in, except: [:index, :show]
  
  def new
    @roaster = Roaster.new
  end

  def create
    Roaster.create roaster_params

    redirect_to roasters_path
  end

  def index
    @roasters = Roaster.all
  end

  def show
    @roaster = Roaster.find params[:id]
  end

  def edit
    @roaster = Roaster.find params[:id]
  end

  def update
    roaster = Roaster.find params[:id]
    roaster.update! roaster_params
    redirect_to roaster_path(params[:id])
  end

  def destroy
    Roaster.destroy params[:id]
    redirect_to roasters_path
  end

  private
  def roaster_params
    params.require(:roaster).permit(
      :name,
      :address
    )
  end
end
