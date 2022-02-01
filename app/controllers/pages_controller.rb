class PagesController < ApplicationController
  def home
  end
  
  def search
    if params[:search].blank?
      redirect_to root_path and return
    else
      @params = params[:search].downcase
      @matchcafe = Cafe.all.where("lower(name) LIKE ?", "%#{@params}%")
      @matchroaster = Roaster.all.where("lower(name) LIKE ?", "%#{@params}%")
      @matchuser = User.all.where("lower(name) LIKE ?", "%#{@params}%")
    end 
  end
end
