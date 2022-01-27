class AddDailyRecordsCulum < ActiveRecord::Migration[6.1]
  def change
    add_column :daily_records, :note_temperature, :string
    add_column :daily_records, :note_condition, :string
    add_column :parents_notes, :note_snot, :string
    add_column :parents_notes, :note_cough, :string
    add_column :parents_notes, :note_slight_fever, :string
    add_column :parents_notes, :note_heat, :string
    add_column :parents_notes, :note_diarrhea, :string
    add_column :parents_notes, :note_vomiting, :string
    add_column :parents_notes, :note_anorexia, :string
    add_column :parents_notes, :note_cold, :string
    add_column :parents_notes, :note_condition_text, :string
    add_column :parents_notes, :note_defecation, :string
    add_column :parents_notes, :note_stool_yes, :string
    add_column :parents_notes, :note_stool_number, :string
    add_column :parents_notes, :note_injury, :string
    add_column :parents_notes, :note_morning_snack, :string
    add_column :parents_notes, :note_morning_remaining_contents, :string
    add_column :parents_notes, :note_noon, :string
    add_column :parents_notes, :note_noon_remaining_contents, :string
    add_column :parents_notes, :note_noon_snack, :string
    add_column :parents_notes, :note_noon_snack_remaining_contents, :string
  end
end
