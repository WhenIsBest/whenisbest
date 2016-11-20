class AddDurationToCalendarEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :calendar_events, :duration, :string
  end
end
