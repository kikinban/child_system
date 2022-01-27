class AddParentNote3 < ActiveRecord::Migration[6.1]
  def change
    add_column :parents_notes, :snot, :string
    add_column :parents_notes, :cough, :string
    add_column :parents_notes, :slight_fever, :string
    add_column :parents_notes, :heatm, :string
    add_column :parents_notes, :diarrhea, :string
    add_column :parents_notes, :vomiting, :string
    add_column :parents_notes, :anorexia, :string
    add_column :parents_notes, :cold, :string
    add_column :parents_notes, :condition_text, :string
    add_column :parents_notes, :defecation, :string
    add_column :parents_notes, :stool_yes, :string
    add_column :parents_notes, :stool_number, :string
    add_column :parents_notes, :medicine, :string
    add_column :parents_notes, :medicine_yes, :string
    add_column :parents_notes, :yesterday_appetite, :string
    add_column :parents_notes, :yesterday_dinner, :string
    add_column :parents_notes, :breakfast_appetite, :string
    add_column :parents_notes, :breakfast, :string
    add_column :parents_notes, :states, :string
    add_column :parents_notes, :information, :string
    add_column :parents_notes, :person, :string
    add_column :parents_notes, :person_name, :string
  end
end
