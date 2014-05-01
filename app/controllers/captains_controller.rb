class CaptainsController < ApplicationController

before_filter :signed_in_captain, only: [:index, :edit, :update]
before_filter :correct_captain,   only: [:edit, :update]

  def index
    @captains = Captain.all
  end

  def show
    @captain = Captain.find(params[:id])
  end

  def new
  end

  def create
    @captain = Captain.new(captain_params)

    if @captain.save
      redirect_to @captain
    else
      render :action => "new"
    end
  end

  def edit
    #@captain = Captain.find(params[:id]) not needed as its included under correct_captain
  end

  def update
    if @captain.update_attributes(params[:captain])
      flash[:success] = "Profile updated"
      sign_in @captain
      redirect_to edit_captain_path
    else
      render :action => "edit"
    end
  end

  private

    def correct_captain
      @captain = Captain.find(params[:id])
      redirect_to(root_url) unless current_captain?(@captain)
    end

    def captain_params
      params.require(:captain).permit(:first_name, :last_name, :date_of_birth, :planet_id, 
                                        :email, :wallet, :password, :password_confirmation)
    end

end
