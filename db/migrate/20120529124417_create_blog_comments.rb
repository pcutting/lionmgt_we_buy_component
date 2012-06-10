class CreateBlogComments < ActiveRecord::Migration
  def change
    create_table :blog_comments do |t|
      t.references :user
      t.references :blog
      t.string :name
      t.string :email
      t.string :website
      t.text :comment
      t.integer :comment_id

      t.timestamps
    end
    add_index :blog_comments, :user_id
    add_index :blog_comments, :comment_id
  end
end
