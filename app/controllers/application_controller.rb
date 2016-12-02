class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  around_action :set_time_zone, if: :current_user
  helper_method :current_user
  helper_method :current_group
  helper_method :get_time_range
  helper_method :get_month
  #before_filter :require_user
    
  @@month_pairs = [[1,"January"],[2,"February"],[3,"March"],[4,"April"],[5,"May"],[6,"June"],[7,"July"],[8,"August"],[9,"September"],[10,"October"],[11,"November"],[12,"December"]]
    
  def get_month(month)
      index = 0
      other = 1
      result = ""
      if month.instance_of? String
         index = 1
          other = 0
      end
        
      @@month_pairs.each do |pair| 
        if pair[index] == month
          result = pair[other]
        end
      end
        
      result
  end
    
  def get_time_range(event_list)
      
      earliest = 23
      latest = 0
      
      e_changed = false
      l_changed = false
      
      if event_list.size == 0
        return [-1,-1]
      end
      
      event_list.each do |event| 
    
        start_time = event.hour.to_i
        end_time = event.end_hour.to_i
          
        if event.meridiem == "PM"
            start_time += 12
        end
          
        if event.end_meridiem == "PM"
            end_time += 12
        end
          
        if event.meridiem == "AM" && start_time == 12
            start_time = 0
        end
          
        if event.end_meridiem == "AM" && end_time == 12
            end_time = 0
        end
          
        if start_time < earliest
            earliest = start_time
            e_changed = true
        end
          
        if end_time > latest
            latest = end_time
            l_changed = true
        end
            
      end
      
      if latest < earliest
          latest = 23
      end
      
      if e_changed && l_changed
        [earliest,latest]
      elsif e_changed
        [earliest,23]
      elsif l_changed
        [0,latest]
      else
        [0,23]
      end
  end
        
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
