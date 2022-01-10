class OverRecords < ActiveRecord::Migration[6.1]
  def change
    drop_table :over_records
  end
end
