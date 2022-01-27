class AddChangePosts < ActiveRecord::Migration[6.1]
  def change
    add_column :change_posts, :change_children_name, :string
    add_column :change_posts, :change_item, :string
  end
end
