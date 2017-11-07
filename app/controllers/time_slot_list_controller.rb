class TimeSlotListController < ApplicationController
  def create

  end

  private
    def time_slot_list_params
      params.require(:time_slot_list).permit(:start_date,:end_date,:duration)
    end
end
