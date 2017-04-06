class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  around_action :set_time_zone, if: :current_user
  helper_method :current_user
  helper_method :current_group
  helper_method :get_time_range
  helper_method :get_month
  helper_method :get_print_time
  helper_method :get_traditional
  helper_method :get_meridiem
  #before_filter :require_user
  
  require 'set'

  @@nums_to_months = {1 => "January", 2 => "February", 3 => "March", 4 => "April", 5 => "May", 6 => "June", 7 => "July", 8 => "August", 9 => "September", 10 => "October", 11 => "November", 12 => "December"}
  
  @@months_to_nums = {"January" => 1, "February" => 2, "March" => 3, "April" => 4, "May" => 5, "June" => 6, "July" => 7, "August" => 8, "September" => 9, "October" => 10, "November" => 11, "December" => 12}
  
  @@print_military_to_traditional = {0 => "12:00 am", 1 => "1:00 am", 2 => "2:00 am", 3 => "3:00 am", 4 => "4:00 am", 5 => "5:00 am", 6 => "6:00 am", 7 => "7:00 am", 8 => "8:00 am", 9 => "9:00 am", 10 => "10:00 am", 11 => "11:00 am", 12 => "12:00 pm", 13 => "1:00 pm", 14 => "2:00 pm", 15 => "3:00 pm", 16 => "4:00 pm", 17 => "5:00 pm", 18 => "6:00 pm", 19 => "7:00 pm", 20 => "8:00 pm", 21 => "9:00 pm", 22 => "10:00 pm", 23 => "11:00 pm" }
  
  def get_meridiem(time)
    if time >= 12
      return "PM"
    end
    return "AM"
  end
  
  def get_traditional(time)
    if time == 0
      return 12
    elsif time > 12
      return time - 12
    else
      return time
    end
  end
  
  def get_print_time(time)
    return @@print_military_to_traditional[time]
  end
    
  def get_month(month)
    check = month.to_i
    if check == 0
      result = @@months_to_nums[month]
    else
      result = check
    end   
    
    return result
  end
    
  def get_time_range(event_list)
      
      hour_set = Set.new
      
      event_list.each do |event| 

        start_time = event.hour.to_i
        end_time = event.end_hour.to_i
        
        
        if event.meridiem == "PM" and start_time < 12
          start_time = start_time + 12
        elsif event.meridiem == "AM" and start_time == 12
          start_time = 0
        end
        
        if event.end_meridiem == "PM" and end_time < 12
          end_time = end_time + 12
        elsif event.end_meridiem == "AM" and end_time == 12
          end_time = 0
        end
        
        if start_time == end_time
          next
        end
          
        
        if start_time > end_time
          for i in start_time..23
            hour_set.add(i)
          end
          for i in 0..end_time
            hour_set.add(i)
          end
        else
          for i in start_time..end_time-1
            hour_set.add(i)
          end
        end
            
      end
      
      return hour_set.to_a
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
