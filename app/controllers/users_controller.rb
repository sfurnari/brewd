class UsersController < ApplicationController

  def new

  end

  def create
    session[:user_id] = user.id
  end

  def index
  end

  def show
  end

  def edit
  end
end
