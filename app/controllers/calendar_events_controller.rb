class CalendarEventsController < ApplicationController
    
    def index
      @calendar_events = CalendarEvent.all
    end

    def show
      @calendar_event = CalendarEvent.find(params[:id])
    end

    def new
      @calendar_event = CalendarEvent.new
    end
    
    def edit
      @calendar_event = CalendarEvent.find(params[:id])
    end
    
    def create
      @calendar_event = CalendarEvent.new(calendar_event_params)
      @calendar_event.host = current_user
      puts calendar_event_params
      
      year = calendar_event_params["date(1i)"]
      month = calendar_event_params["date(2i)"]
      day = calendar_event_params["date(3i)"] 
        
      months = {1 => "January", 2 => "February", 3 => "March", 4 => "April", 5 => "May", 6 => "June", 7 => "July", 8 => "August", 9 => "September", 10 => "October", 11 => "November", 12 => "December"}
        
      @calendar_event.month = months[month.to_i]
      @calendar_event.day = day
      @calendar_event.year = year 
        
      @calendar_event.hour = calendar_event_params["hour"]
      @calendar_event.minutes = calendar_event_params["minutes"]
      @calendar_event.meridiem = calendar_event_params["meridiem"]
                
      @calendar_event.date = "#{@calendar_event.month} #{@calendar_event.day}, #{@calendar_event.year}"
      
      if @calendar_event.save!
        redirect_to @calendar_event
      else
        render 'new'
      end
    end
    
    def update
      @calendar_event = CalendarEvent.find(params[:id])

      if @calendar_event.update(calendar_event_params)
        redirect_to @calendar_event
      else
        render 'edit'
      end
    end
    
    def destroy
      @calendar_event = CalendarEvent.find(params[:id])
      @calendar_event.destroy

      redirect_to calendar_events_path
    end
    
    def self.months(month_number)
        @@months[month_number]
    end

    private
      def calendar_event_params
        params.require(:calendar_event).permit(:hour, :minutes, :meridiem, :name, :date)
      end
end


