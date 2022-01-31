class CafesController < ApplicationController
  
  before_action :check_if_logged_in, except: [:index, :show]
  
  def new
    @cafe = Cafe.new
  end

  def create
    @cafe = Cafe.new @cafe_params
    # @cafe.user_id = @current_user.id
    @cafe.save
    
    if @cafe.persisted?
      @cafe.users << @current_user
      redirect_to cafes_path
    else
      render :new
    end

    
  end

  def index
    @cafes = Cafe.all
  end

  def show
  end

  def edit
    @cafe = Cafe.find params[:id]
  end
end
