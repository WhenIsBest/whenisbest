class AddGroupIdsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :group_ids, :text
  end
end
