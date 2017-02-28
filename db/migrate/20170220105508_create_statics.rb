class CreateStatics < ActiveRecord::Migration[5.0]
  def change
    create_table :statics do |t|

      t.timestamps
    end
  end
end
