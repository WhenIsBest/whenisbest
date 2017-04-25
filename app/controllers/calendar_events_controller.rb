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
    
    def group_new
        @calendar_event = CalendarEvent.new(calendar_event_params)
    end
  
    def form_group
      
      @slot_list = TimeSlotList.new
    end
    
    def edit
      @calendar_event = CalendarEvent.find(params[:id])
    end
    
    def create
      @calendar_event = CalendarEvent.new(calendar_event_params)
      @calendar_event.host = current_user.id
      
     
      
      year = calendar_event_params["date(1i)"]
      month = calendar_event_params["date(2i)"]
      day = calendar_event_params["date(3i)"] 
      
      if calendar_event_params["year"]
        year = calendar_event_params["year"]
      end
      
      if calendar_event_params["month"]
        month = calendar_event_params["month"]
      end
      
      if calendar_event_params["day"]
        day = calendar_event_params["day"]
      end
            
      months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November" , "December"]
        
      @calendar_event.month = get_month(months[month.to_i-1])
      @calendar_event.day = day
      @calendar_event.year = year 
        
      @calendar_event.hour = calendar_event_params["hour"]
      @calendar_event.minutes = calendar_event_params["minutes"]
      @calendar_event.meridiem = calendar_event_params["meridiem"]
        
      @calendar_event.end_hour = calendar_event_params["end_hour"]
      @calendar_event.end_minutes = calendar_event_params["end_minutes"]
      @calendar_event.end_meridiem = calendar_event_params["end_meridiem"]
        
      @calendar_event.duration = @calendar_event.get_duration(@calendar_event.hour,@calendar_event.minutes,@calendar_event.meridiem,@calendar_event.end_hour,@calendar_event.end_minutes,@calendar_event.end_meridiem)
      
      if calendar_event_params["duration"]
        @calendar_event.duration = calendar_event_params["duration"]
      end
        
      @calendar_event.date = "#{@calendar_event.month} #{@calendar_event.day}, #{@calendar_event.year}"
        
      @calendar_event.group = calendar_event_params["group"]
      
      @calendar_event.priority = calendar_event_params["priority"]
      
      if @calendar_event.save!
        if @calendar_event.group
          redirect_to group_path(@calendar_event.group)
        else
          redirect_to '/welcome/homepage'
        end
      else
        render 'new'
      end
    end
    
    def update
      @calendar_event = CalendarEvent.find(params[:id])
        
      if @calendar_event.update(calendar_event_params)
          if @calendar_event.group
            redirect_to group_path(@calendar_event.group)
          else
            redirect_to '/welcome/homepage'
          end
      else
        render 'edit'
      end
    end
    
    def destroy
      @calendar_event = CalendarEvent.find(params[:id])
      @calendar_event.destroy

      if @calendar_event.group
        redirect_to group_path(@calendar_event.group)
      else
        redirect_to '/welcome/homepage'
      end
    end   
    
    def slots
      
    end

    private
      def calendar_event_params
        params.require(:calendar_event).permit(:host, :start_time, :hour, :minutes, :meridiem, :name, :date, :end_hour, :end_minutes, :end_meridiem, :duration, :day, :year, :month, :group, :priority)
      end
end


