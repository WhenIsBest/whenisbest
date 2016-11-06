class WelcomeController < ApplicationController
  def homepage
      @groups = Group.all
  end
end
