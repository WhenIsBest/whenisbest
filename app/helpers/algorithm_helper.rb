module AlgorithmHelper
    require 'set'
  
    # Check whether event is in the future
    def in_future(event)
      
      check = event.month.to_i
      if check == 0
        month = get_month(event.month)
      else
        month = check
      end
      
      if event.year.to_i == 0 or month.to_i == 0 or event.day.to_i == 0
        return false
      end
      
      event_time = Time.new(event.year.to_i,month.to_i,event.day.to_i)
      
      return event_time >= Time.current.beginning_of_day
    end

    # Gets all (past and/or future) events of inputted user
    def all_events(user_id,future=false)
      event_set = Set.new
      
      # Get user's individual events
      events = CalendarEvent.where(host: user_id).find_each.to_set
      events.each do |event|
        if (in_future(event) and future) or not future
          event_set.add(event)
        end
      end
      
      
      user = User.find(user_id)

      # Get group events this user is associated with
      group_event_set = Set.new
      user.group_ids.each do |group_id| 
        if group_id == nil
          next
        end
        
        group_events = CalendarEvent.where(:group => group_id).find_each 
        
        group_events.each do |event|
          if (in_future(event) and future) or not future
            group_event_set.add(event)
          end
        end

      end 
      
      event_set.merge(group_event_set)
      
      return event_set
    end
  
    # Gets all future events associated with group members  
    def get_group_user_events(group)
    
      event_set = Set.new
      
      # Iterate through group's members and
      # store the events of each user into a set to return
      group.group_members.each do |user|
        user_events = []
        if user.kind_of?(User)
          user_events = all_events(user.id,future=true)
        else
          user_events = all_events(user,future=true)
        end
        
        event_set.merge(user_events)
      
      end
      return event_set
    end
  
end