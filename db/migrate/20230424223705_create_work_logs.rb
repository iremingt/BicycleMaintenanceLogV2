class CreateWorkLogs < ActiveRecord::Migration[6.1]
  def change
    create_table :work_logs do |t|
      t.string :title
      t.text :description
      t.integer :date
      t.integer :hoursUntilServiceDue

      t.timestamps
    end
  end
end
