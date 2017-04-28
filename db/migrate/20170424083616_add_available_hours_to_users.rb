class AddAvailableHoursToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :start_time, :integer
    add_column :users, :end_time, :integer
  end
end
