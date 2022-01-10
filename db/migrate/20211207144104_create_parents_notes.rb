class CreateParentsNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :parents_notes do |t|
      t.text :content

      t.timestamps
    end
  end
end
