class ApplicationController < ActionController::Base
  helper_method :current_user
  before_action :authorized
  helper_method :logged_in?

  def current_user
    puts("into current user")
    if session[:user_id]
      puts("into session")
      @current_user ||= User.find(session[:user_id])
    else
      @current_user = nil
    end
  end
  def logged_in?
    puts("into loggedin")
    !current_user.nil?
  end

  def authorized
    puts "ito autorized"
    # if logged_in?
    #   redirect_to root_path
    # end
    puts(root_path)
    redirect_to root_path unless logged_in?
  end
end
