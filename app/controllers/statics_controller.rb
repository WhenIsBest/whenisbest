class StaticsController < ApplicationController
  def new
    @static_page = Static.new
  end
    
  def create
    @static_page = Static.new(params[:id])
    if @static_page.save
      redirect_to new_statics_path
    else
      render :action => "new"
    end
  end
        
  def show
    @static_page = Static.find(params[:id])
    redirect_to @static_page.id
  end
end
