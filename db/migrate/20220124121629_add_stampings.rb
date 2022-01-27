class AddStampings < ActiveRecord::Migration[6.1]
  def change
    add_column :stampings, :stamping_children_name, :string
    
  end
end
