class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.text :name
      t.text :description
      t.text :group_members

      t.timestamps
    end
  end
end
