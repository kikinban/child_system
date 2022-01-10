class CreateChangePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :change_posts do |t|
      t.date :date
      t.time :time
      t.string :person
      t.text :others

      t.timestamps
    end
  end
end
