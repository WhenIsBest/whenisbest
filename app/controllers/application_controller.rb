class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  around_action :set_time_zone, if: :current_user
  helper_method :current_user
    
  def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
    
  def require_user
      redirect_to '/' unless current_user
  end

  private
    def set_time_zone(&block)
      Time.use_zone(current_user.time_zone, &block)
    end
end
