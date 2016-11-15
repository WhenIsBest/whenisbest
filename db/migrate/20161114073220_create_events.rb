class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :start_time
      t.integer :duration
      t.integer :priority

      t.timestamps
    end
  end
end
