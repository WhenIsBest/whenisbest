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

      @members = [current_user.id]
      members_param.each.with_index(1) do |member, index|
          member = User.find_by_email member
          if member
            @members.push(member.id)
          end
      end
        
      @group.group_members = @members
                
      if @group.save
          session[:group_id] = @group.id
          
          
          redirect_to @group
        else
          render 'new'
      end
        
      
        
      @members.each do |member| 
        user = User.find(member)
        if user.group_ids.kind_of?(Array)
            group_ids = user.group_ids
        elsif user.group_ids == nil
            group_ids = [] 
            groups = Group.all
            groups.each do |group| 
                if group.group_members != nil
                    group.group_members.each do |member| 
                       if member.kind_of?(User)
                           if member.id == user.id
                               group_ids << group.id
                           end
                       else
                           if member == user.id 
                             group_ids << group.id 
                           end 
                       end


                    end
                end
                
              
            end 
            user.group_ids = group_ids
        else
            group_ids = user.group_ids.remove("]").remove("[").split(",")
        end
        group_ids.push(@group.id)
        user.group_ids = group_ids
        user.save!
      end
    end
    
    def update
      @group = Group.find(params[:id])
        
      members_param = params[:group_members]
        
      @members = @group.group_members
      members_param.each.with_index(1) do |member,index|
          member = User.find_by_email member
          if member
              @members.push(member)
          end
      end
        
      @group.group_members = @members
          
      if @group.update(group_params)
        redirect_to @group
      else
        render 'edit'
      end
    end
    
    def destroy
      @group = Group.find(params[:id])
      
      if @group.group_members != nil
          @group.group_members.each do |member|
            if member.kind_of?(User)
               user = member
           else
               user = User.find(member)
           end
       end
          
       user.group_ids.delete(@group.id)

      end
      session[:group_id] = nil
      reset_session
      @group.destroy

      redirect_to groups_path
    end

    private
      def group_params
        params.require(:group).permit(:name, :description, :group_members)
      end
end
