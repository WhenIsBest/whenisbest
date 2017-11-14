class CalendarEventValidator < ActiveModel::Validator
  def validate(event)
    if event.duration.to_i <= 0
      event.errors[:base] << "Event ends before it starts"
    end
  end
end
