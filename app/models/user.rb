class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :rememberable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :lockable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  
  validates_presence_of :name, :email, :username
  validates_uniqueness_of :username, :email, :case_sensitive => false
  
  has_many :contacts
  has_many :blogs
  has_many :blog_comments, :through => :blogs
  
  has_many :prospective_properties
  
  
  accepts_nested_attributes_for :prospective_properties
  
  attr_accessible :username, :name, :email, :password, :password_confirmation, :remember_me
end
