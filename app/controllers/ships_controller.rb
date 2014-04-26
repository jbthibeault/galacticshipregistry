class ShipsController < ApplicationController

  def index
    @ships = Ship.all
  end

  def show
    @ship = Ship.find(params[:id])
  end

  def new
  end

  def create
    @ship = Ship.new(params[:ship])
    @captain = Captain.find(@ship.captains_id) #why is this plural? so it works. I don't understand
    @planet = Planet.find(@ship.planet_id)
    @engine = Engine.find(@ship.engine_id)

    if @ship.save
      redirect_to @ship
    else
      render :action => "new"
    end
  end

end
