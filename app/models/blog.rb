class Blog < ActiveRecord::Base
  belongs_to :user
  has_many :blog_comments
  
  scope :sorted, :order => "created_at desc"
  

end
