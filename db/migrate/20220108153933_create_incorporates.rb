class CreateIncorporates < ActiveRecord::Migration[6.1]
  def change
    create_table :incorporates do |t|
      t.date :date
      t.string :title
      t.text :content
      t.text :image_1
      t.text :image_2
      t.text :image_3

      t.timestamps
    end
  end
end
