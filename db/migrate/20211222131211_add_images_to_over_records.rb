class AddImagesToOverRecords < ActiveRecord::Migration[6.1]
  def change
    add_column :over_records, :images, :json
  end
end
