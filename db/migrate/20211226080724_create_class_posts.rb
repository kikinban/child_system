class CreateClassPosts < ActiveRecord::Migration[6.1]
  def change
    create_table :class_posts do |t|
      t.text :image_1
      t.text :image_2
      t.text :image_3
      t.text :title
      t.text :content

      t.timestamps
    end
  end
end
