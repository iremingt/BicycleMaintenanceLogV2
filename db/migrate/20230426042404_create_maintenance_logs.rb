class CreateMaintenanceLogs < ActiveRecord::Migration[6.1]
  def change

    drop_table :maintenance_logs

    create_table :maintenance_logs do |t|
      t.string :title
      t.text :description
      t.integer :date
      t.integer :hoursUntilService

      t.timestamps
    end
  end
end
