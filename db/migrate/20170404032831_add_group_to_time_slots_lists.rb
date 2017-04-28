class AddGroupToTimeSlotsLists < ActiveRecord::Migration[5.0]
  def change
    add_column :time_slots_lists, :group, :integer
  end
end
