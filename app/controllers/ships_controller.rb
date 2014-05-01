class ShipsController < ApplicationController

  before_filter :signed_in_captain
  before_filter :correct_captain,   only: [:destroy]

  def index
    @ships = current_captain.ships
  end

  def show
    @ship = Ship.find(params[:id])
  end

  def new
    @ship = Ship.new
  end

  def create
    @ship = current_captain.ships.build(params[:ship]) #assigns current_captain as ship owner
    if @ship.save
      flash[:success] = "ship created!"
      redirect_to ships_path
    else
      render 'index'
    end
  end

  def destroy
    @ship.destroy
    redirect_to root_url
  end

  private

    def correct_captain
      @ship = current_captain.ships.find_by_id(params[:id])
      redirect_to root_url if @ship.nil?
    end
end
