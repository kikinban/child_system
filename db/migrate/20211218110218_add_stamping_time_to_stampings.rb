class AddStampingTimeToStampings < ActiveRecord::Migration[6.1]
  def change
    add_column :stampings, :stamping_time, :integer
  end
end
