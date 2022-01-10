class CreateParentForms < ActiveRecord::Migration[6.1]
  def change
    create_table :parent_forms do |t|
      t.string :children_name
      t.string :parent_name
      t.string :content_name
      t.text :contents

      t.timestamps
    end
  end
end
