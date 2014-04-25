class EnginesController < ApplicationController
  def index
    @engines = Engine.all
  end

  def new 
    
  end

  def create
    @engine = Engine.new(params[:engine])

    @engine.save
    redirect_to :action => "index"
  end
end
