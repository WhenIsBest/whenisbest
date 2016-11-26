class CalendarEvent < ApplicationRecord
    validates :hour, presence: true
    validates :minutes, presence: true
    validates :meridiem, presence: true
    validates :name, presence: true, length: {minimum: 1}
    
    @@month_pairs = [[1,"January"],[2,"February"],[3,"March"],[4,"April"],[5,"May"],[6,"June"],[7,"July"],[8,"August"],[9,"September"],[10,"October"],[11,"November"],[12,"December"]]
    
    @@months = ["January","February","March","April","May","June","July","August","September","October","November","December"]
    
    @@days = ['1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31']
    
    @@years = ['2016','2017','2018','2019','2020','2021','2022','2023','2024','2025','2026','2027','2028','2029','2030','2031','2032','2033','2034','2035','2036']

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
    
    def months
        @@months
    end
    
    def days
        @@days
    end
    
    def years
        @@years
    end
end
