class CafesController < ApplicationController
  
  before_action :check_if_logged_in, except: [:index, :show]
  
  def new
    @cafe = Cafe.new
  end

  def create
    Cafe.create cafe_params

    redirect_to cafes_path
  end

  def index
    @cafes = Cafe.all
  end

  def show
    @cafe = Cafe.find params[:id]
  end

  def edit
    @cafe = Cafe.find params[:id]
  end

  def update
    cafe = Cafe.find params[:id]
    cafe.update! cafe_params
    redirect_to cafe_path(params[:id])
  end

  def destroy
    Cafe.destroy params[:id]
    redirect_to cafes_path
  end

  private
  def cafe_params
    params.require(:cafe).permit(
      :name,
      :address,
      :roaster_id
    )
  end
end
