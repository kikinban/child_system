class AddCondition < ActiveRecord::Migration[6.1]
  def change
    add_column :parents_notes, :condition, :string
    remove_column :parents_notes, :conditon, :string
  end
end
