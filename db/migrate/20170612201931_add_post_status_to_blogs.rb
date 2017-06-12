class AddPostStatusToBlogs < ActiveRecord::Migration[5.0]
  def change
    add_column :blogs, :status, :integer, default: 0
    enum status{draft: 0, published: 1}
  end
end
