module SessionsHelper

  def sign_in(captain)
    cookies.permanent[:remember_token] = captain.remember_token
    self.current_captain = captain
  end

  def signed_in?
    !current_captain.nil?
  end

  def current_captain=(captain)
    @current_captain = captain
  end

  def current_captain
    @current_captain ||= Captain.find_by_remember_token(cookies[:remember_token])
  end

  def current_captain?(captain)
    captain == current_captain
  end

  def signed_in_captain
    unless signed_in?
      store_location
      redirect_to signin_url, notice: "Please sign in."
    end
  end

  def sign_out
    current_captain = nil
    cookies.delete(:remember_token)
  end

  def redirect_back_or(default)
    redirect_to(session[:return_to] || default)
    session.delete(:return_to)
  end

  def store_location
    session[:return_to] = request.url
  end

end