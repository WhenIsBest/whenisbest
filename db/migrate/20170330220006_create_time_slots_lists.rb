class CreateTimeSlotsLists < ActiveRecord::Migration[5.0]
  def change
    create_table :time_slots_lists do |t|
      t.date :start_date
      t.date :end_date
      t.integer :duration

      t.timestamps
    end
  end
end
