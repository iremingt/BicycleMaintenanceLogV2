class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.integer :log_id
      t.text :description

      t.timestamps
    end
  end
end
