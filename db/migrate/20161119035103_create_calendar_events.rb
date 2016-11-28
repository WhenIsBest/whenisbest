class CreateCalendarEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :calendar_events do |t|
      t.string :host
      t.string :group
      t.integer :start_time
      t.string :hour
      t.string :minutes
      t.string :meridiem
      t.string :name
      t.string :location
      t.integer :priority
      t.string :date
      t.string :month
      t.string :day
      t.string :year
      

      t.timestamps
    end
  end
end
