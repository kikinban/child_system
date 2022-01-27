class AddColumDaily < ActiveRecord::Migration[6.1]
  def change
    add_column :daily_records, :note_snot, :string
    add_column :daily_records, :note_cough, :string
    add_column :daily_records, :note_slight_fever, :string
    add_column :daily_records, :note_heat, :string
    add_column :daily_records, :note_diarrhea, :string
    add_column :daily_records, :note_vomiting, :string
    add_column :daily_records, :note_anorexia, :string
    add_column :daily_records, :note_cold, :string
    add_column :daily_records, :note_condition_text, :text
    add_column :daily_records, :note_defecation, :string
    add_column :daily_records, :note_stool_yes, :string
    add_column :daily_records, :note_stool_number, :string
    add_column :daily_records, :note_injury, :string
    add_column :daily_records, :note_morning_snack, :string
    add_column :daily_records, :note_morning_remaining_contents, :string
    add_column :daily_records, :note_noon, :string
    add_column :daily_records, :note_noon_remaining_contents, :string
    add_column :daily_records, :note_noon_snack, :string
    add_column :daily_records, :note_noon_snack_remaining_contents, :string
  end
end
