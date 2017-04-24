class AddAvailableMeridiemToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :start_md, :string
    add_column :users, :end_md, :string
  end
end
