class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :category
      t.string :topic
      t.string :author
      t.references :user
      t.text :content
      t.integer :comment_count
      t.timestamps
    end
  end
end
