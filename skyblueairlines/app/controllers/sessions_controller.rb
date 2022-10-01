class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]
  def new

  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url
    else
      flash.now[:alert] = "Email or password is invalid"
    end
  end

  def destroy
    session[:user_id] = nil
    puts(root_url)
    redirect_to root_url
  end
end
