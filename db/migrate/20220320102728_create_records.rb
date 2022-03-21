class CreateRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :records do |t|
      t.integer :activity
      t.integer :feeling
      t.integer :condition
      t.integer :appetite
      t.timestamps
    end
  end
end
