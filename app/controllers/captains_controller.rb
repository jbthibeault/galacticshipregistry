class CaptainsController < ApplicationController

  def index
    @captains = Captain.all
  end

  def show
    @captain = Captain.find(params[:id])
  end

  def new
  end

  def create
    @captain = Captain.new(params[:captain])

    if @captain.save
      redirect_to @captain
    else
      render :action => "new"
    end
  end

end
