class CreateDailyRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :daily_records do |t|
      t.text :activities
      t.text :states
      t.text :information

      t.timestamps
    end
  end
end
