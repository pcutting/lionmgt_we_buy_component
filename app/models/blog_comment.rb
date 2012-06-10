class BlogComment < ActiveRecord::Base
  belongs_to :user
  belongs_to :blog
  belongs_to :parent , :class_name => "BlogComment", :foreign_key => "comment_id"
  has_many :replies, :class_name => "BlogComment", :foreign_key => "comment_id"
  
  validates_presence_of :name, :email, :comment
  
end
