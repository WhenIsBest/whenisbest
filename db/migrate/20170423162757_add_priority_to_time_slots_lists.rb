class AddPriorityToTimeSlotsLists < ActiveRecord::Migration[5.0]
  def change
    add_column :time_slots_lists, :priority, :integer
  end
end
