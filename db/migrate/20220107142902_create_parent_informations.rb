class CreateParentInformations < ActiveRecord::Migration[6.1]
  def change
    create_table :parent_informations do |t|
      t.date :date
      t.string :title
      t.text :content
      t.text :file_content

      t.timestamps
    end
  end
end
