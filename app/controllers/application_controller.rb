class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?
  def current_user
    @current_user ||= User.find_by_id(session[:user])
  end

   def logged_in?
     current_user != nil
   end

  def require_login
    unless logged_in?
      flash.now[:error] = "You must be logged in to access this section"
      redirect_to new_post_path
    end 
  end
end
