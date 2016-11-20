class CalendarEvent < ApplicationRecord
    validates :hour, presence: true
    validates :minutes, presence: true
    validates :meridiem, presence: true
    validates :name, presence: true, length: {minimum: 1}
    validates :date, presence: true
    
    def get_duration(start_hour,start_minutes,start_mrd,end_hour,end_minutes,end_mrd)
        
        if start_mrd == "PM"
            start_hour = (start_hour.to_i + 12).to_s
        end
        
        if end_mrd == "PM"
            end_hour = (end_hour.to_i + 12).to_s
        end
        
        hour_diff = (start_hour.to_i - end_hour.to_i).to_s
        minutes_diff = (start_minutes.to_i - end_minutes.to_i).to_s
        
        result = hour_diff + "." + minutes_diff
        result
        
    end
    
    def print_event(day,hour,event)
        result = ""
        if day == event.day.to_i
            if event.meridiem == "AM"
                if hour == event.hour.to_i
                    result = event.name
                end
            elsif event.meridiem == "PM" && event.hour == "12"
                if hour == event.hour.to_i
                    result = event.name
                end
            else
                if hour == event.hour.to_i + 12
                    result = event.name
                end
            end
        end

        result
        
    end
end
