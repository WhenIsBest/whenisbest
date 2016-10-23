class GroupsController < ApplicationController
    def index
    end
    
    def new
    end
    
    def create
        render plain: params[:group].inspect
    end
end
