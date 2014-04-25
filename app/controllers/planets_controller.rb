class PlanetsController < ApplicationController
  def index
    @planets = Planet.all
  end

  def new 
    
  end

  def create
    @planet = Planet.new(params[:planet])

    @planet.save
    redirect_to :action => "index"
  end
end
