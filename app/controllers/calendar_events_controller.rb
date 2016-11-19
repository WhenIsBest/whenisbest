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
      calendar_event_params[:host] = current_user      
      @calendar_event = CalendarEvent.new(calendar_event_params)
      

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

    private
      def calendar_event_params
        params.require(:calendar_event).permit(:hour, :minutes, :meridiem, :name, :date)
      end
end


