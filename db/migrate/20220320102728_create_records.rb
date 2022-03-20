class CreateRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :records do |t|
      t.string :activity
      t.string :feeling
      t.string :condition
      t.string :appetite
      t.timestamps
    end
  end
end
