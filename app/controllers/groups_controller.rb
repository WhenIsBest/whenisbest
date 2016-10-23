class GroupsController < ApplicationController
    def new
    end
    
    def create
        render plain: params[:group].inspect
    end
end
