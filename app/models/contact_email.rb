class ContactEmail < ActiveRecord::Base
  belongs_to :user
  belongs_to :contact
  
  validates_presence_of :email
end
