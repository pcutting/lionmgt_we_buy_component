class Contact < ActiveRecord::Base
  belongs_to :user
  
    
  has_many :contact_emails
  has_many :contact_addresses
  has_many :contact_dates
  has_many :contact_notes
  has_many :contact_phones
  has_many :contact_websites
  has_many :work_infos
  
  
  accepts_nested_attributes_for :contact_emails
  accepts_nested_attributes_for :contact_addresses
  accepts_nested_attributes_for :contact_dates
  accepts_nested_attributes_for :contact_notes
  accepts_nested_attributes_for :contact_phones
  accepts_nested_attributes_for :contact_websites
  accepts_nested_attributes_for :work_infos
  
  
end
