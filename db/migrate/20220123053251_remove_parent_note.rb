class RemoveParentNote < ActiveRecord::Migration[6.1]
  def change
    remove_column :parents_notes, :note_snot, :string
    remove_column :parents_notes, :note_cough, :string
    remove_column :parents_notes, :note_slight_fever, :string
    remove_column :parents_notes, :note_heat, :string
    remove_column :parents_notes, :note_diarrhea, :string
    remove_column :parents_notes, :note_vomiting, :string
    remove_column :parents_notes, :note_anorexia, :string
    remove_column :parents_notes, :note_cold, :string
    remove_column :parents_notes, :note_condition_text, :string
    remove_column :parents_notes, :note_defecation, :string
    remove_column :parents_notes, :note_stool_yes, :string
    remove_column :parents_notes, :note_stool_number, :string
    remove_column :parents_notes, :note_injury, :string
    remove_column :parents_notes, :note_morning_snack, :string
    remove_column :parents_notes, :note_morning_remaining_contents, :string
    remove_column :parents_notes, :note_noon, :string
    remove_column :parents_notes, :note_noon_remaining_contents, :string
    remove_column :parents_notes, :note_noon_snack, :string
    remove_column :parents_notes, :note_noon_snack_remaining_contents, :string
    add_column :parents_notes, :heat, :string
  end
end
