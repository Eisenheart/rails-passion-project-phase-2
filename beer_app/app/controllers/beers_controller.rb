class BeersController < ApplicationController
  include ApplicationHelper

  def index
    @user = User.find_by(session[:id])
    @beers = Beer.all
  end

  def show
  end

  def new

  end

  def edit
    @beer = Beer.find(params[:id])
  end

  def create
    # p params[:beer]
    beer = Beer.new(beer_params)

    beer.save
    redirect_to beers_path
  end

  private
  def beer_params
    params.require(:beer).permit(:name, :link, :occasion, :appearance, :aroma, :palate, :flavour, :final_score, :user_id)
  end

  def update
  end

  def destroy
    Beer.find(params[:id]).destroy
    redirect_to beers_path
# is not working
  end
end
