class WelcomeController < ApplicationController
  def homepage
      @groups = Group.all
      @user = User.find_by_id(session[:user_id])
  end
end
