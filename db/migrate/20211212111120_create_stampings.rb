class CreateStampings < ActiveRecord::Migration[6.1]
  def change
    create_table :stampings do |t|
      t.timestamp :start_time
      t.timestamp :end_time
      t.string :stamping_times
      t.timestamps
    end
  end
end
