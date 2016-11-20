class CalendarEvent < ApplicationRecord
    validates :hour, presence: true
    validates :minutes, presence: true
    validates :meridiem, presence: true
    validates :name, presence: true, length: {minimum: 1}
    validates :date, presence: true
    
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
