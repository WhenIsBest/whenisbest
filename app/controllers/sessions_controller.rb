class SessionsController < ApplicationController
  #before_filter :login_required, :except=>[:new, :create]
  #skip_before_filter :login_required, only: [:new, :create]
  def new
  end
    
  def create
      user = User.find_by(email: params[:session][:email])
      if user and user.authenticate(params[:session][:password])
          session[:user_id] = user.id
          redirect_to '/welcome/homepage'
      else
          redirect_to '/login', notice: "Invalid username or password"
      end
  end
    
  def destroy
      if session[:user_id]
        session[:user_id] = nil
      end
      redirect_to '/'
  end
end
