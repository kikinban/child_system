class AddParentsNotes < ActiveRecord::Migration[6.1]
  def change

    add_column :parents_notes, :parent_note_date, :string
    add_column :parents_notes, :temperature, :string
    add_column :parents_notes, :conditon, :string


  end
end
