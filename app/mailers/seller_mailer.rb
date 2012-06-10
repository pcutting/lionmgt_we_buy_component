class SellerMailer < ActionMailer::Base
  default from: "phil@lionmgt.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.seller_mailer.submission_confirmation.subject
  #
  def submission_confirmation(seller)
    @greeting = "Hi"
    
    mail to: "seller.email", :subject => "Thank you for submitting your property to Lion MGT"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.seller_mailer.submission_notification.subject
  #
  def submission_notification(seller)
    @greeting = "Hi"

    mail to: "to@example.org", :subject => "Notification: LionMGT.com - Seller submition #{Time.now.to_s(:short)}"
  end
end
