class GroupsController < ApplicationController
    
    def index
    @groups = Group.all
    end

    def show
       @group = Group.find(params[:id])
    end

    def new
     @group = Group.new
    end
    
    def edit
      @group = Group.find(params[:id])
    end
    
    def create
      @group = Group.new(group_params)
    
      members_param = params[:group_members]
      @members = []
        members_param.each.with_index(1) do |member, index|
          @members.push(member)
      end
        
      @group.group_members = @members
        
      if @group.save
          redirect_to @group
        else
          render 'new'
      end
    end
    
    def update
      @group = Group.find(params[:id])

      if @group.update(group_params)
        redirect_to @group
      else
        render 'edit'
      end
    end
    
    def destroy
      @group = Group.find(params[:id])
      @group.destroy

      redirect_to groups_path
    end

    private
      def group_params
        params.require(:group).permit(:name, :description, :group_members)
      end
end
