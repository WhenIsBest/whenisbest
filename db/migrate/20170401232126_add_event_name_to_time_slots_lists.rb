class AddEventNameToTimeSlotsLists < ActiveRecord::Migration[5.0]
  def change
    add_column :time_slots_lists, :event_name, :string
  end
end
