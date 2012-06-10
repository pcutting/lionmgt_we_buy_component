class SellerMailer < ActionMailer::Base
  default from: "phil@nevie.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.seller_mailer.submission_confirmation.subject
  #
  def submission_confirmation(seller)
    @seller = seller     
    
    attachments.inline['phil_face'] = {:data => File.read("#{Rails.root.to_s + '/app/assets/images/phil_face.jpg'}"),:mime_type => "image/jpg"}
    attachments.inline['mini_lion_logo'] = {:data => File.read("#{Rails.root.to_s + '/app/assets/images/mini_lion_logo.png'}"),:mime_type => "image/png"}
                                 
    mail to: seller.email, subject: "Thank you for submitting your property to Lion MGT"
    
  end

  def submission_notification(seller)
    @seller = seller
    mail to: "phil@nevie.com", :subject => "Notification: LionMGT.com - Seller submition #{Time.now.to_s(:short)}"
  end
  
  def submission_attempt_notification(seller)
    @seller = seller
    mail to: "phil@nevie.com", :subject => "Notification: LionMGT.com - Seller failed submition #{Time.now.to_s(:short)}"
  end
end
