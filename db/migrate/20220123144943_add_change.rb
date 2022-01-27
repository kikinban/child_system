class AddChange < ActiveRecord::Migration[6.1]
  def change
    add_column :change_posts, :change_content, :string
    add_column :change_posts, :change_time, :string
  end
end
