module AlgorithmHelper
    require 'set'

    def all_events(user_id)
      event_set = CalendarEvent.where(host: user_id).find_each.to_set

      user = User.find(user_id)

      group_event_set = Set.new
      user.group_ids.each do |group_id| 
        group_events = CalendarEvent.where(group: group_id).find_each 

        group_event_set.merge(group_events.to_set)

      end 

      event_set.merge(group_event_set)

      return event_set
    end
  
    def get_group_events(group)
    
      event_set = Set.new
      
      group.group_members.each do |user|
        user_events = []
        if user.kind_of?(User)
          user_events = all_events(user.id)
        else
          user_events = all_events(user)
        end
        
        event_set.merge(user_events)
        
        return event_set
      
      end
    end
end