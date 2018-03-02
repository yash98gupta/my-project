class AddCommentColumnToNestedcomments < ActiveRecord::Migration[5.1]
  def change
    add_column :nestedcomments, :comment_id, :integer
  end
end
