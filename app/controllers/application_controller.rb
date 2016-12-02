class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  around_action :set_time_zone, if: :current_user
  helper_method :current_user
  helper_method :current_group
  #before_filter :require_user
    
  def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
  rescue ActiveRecord::RecordNotFound
  end
    
  def require_user
      redirect_to '/' unless current_user
  end
  
  def current_group
      @current_group ||= Group.find(session[:group_id]) if session[:group_id]
  rescue ActiveRecord::RecordNotFound
  end
  private
    def set_time_zone(&block)
      Time.use_zone(current_user.time_zone, &block)
    end
end
