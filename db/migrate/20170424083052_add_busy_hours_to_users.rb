class AddBusyHoursToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :busy_start, :integer
    add_column :users, :busy_end, :integer
    add_column :users, :busy_meridiem, :string
    add_column :users, :busy_end_meridiem, :string
  end
end
