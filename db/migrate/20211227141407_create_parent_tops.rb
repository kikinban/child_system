class CreateParentTops < ActiveRecord::Migration[6.1]
  def change
    create_table :parent_tops do |t|

      t.timestamps
    end
  end
end
