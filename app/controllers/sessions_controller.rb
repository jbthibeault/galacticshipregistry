class SessionsController < ApplicationController
  
  def new

  end

  def create
    captain = Captain.find_by_email(params[:session][:email].downcase)
    if captain && captain.authenticate(params[:session][:password])
      sign_in captain
      redirect_back_or captain
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end
