class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :name
      t.string :operating_system
      t.integer :screen_width
      t.integer :screen_height
      t.string :model_number

      t.timestamps
    end
  end
end
