class CreateServiceDevices < ActiveRecord::Migration
  def change
    create_table :service_devices do |t|
      t.string :name
      t.string :operating_system
      t.references :user, index: true
      t.boolean :repaired
      t.boolean :repair_done
      t.string :comment
      t.timestamps
    end
  end
end
