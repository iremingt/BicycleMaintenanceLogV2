class CreateLogs < ActiveRecord::Migration[6.1]
  def change
    create_table :logs do |t|
      t.string :title
      t.text :description
      t.integer :date

      t.timestamps
    end
  end
end
