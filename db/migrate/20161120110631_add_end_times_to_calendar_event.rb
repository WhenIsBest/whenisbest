class AddEndTimesToCalendarEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :calendar_events, :end_hour, :string
    add_column :calendar_events, :end_minutes, :string
    add_column :calendar_events, :end_meridiem, :string
  end
end
