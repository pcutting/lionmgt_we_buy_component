require "spec_helper"

describe SellerMailer do
  describe "submission_confirmation" do
    let(:mail) { SellerMailer.submission_confirmation }

    it "renders the headers" do
      mail.subject.should eq("Submission confirmation")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

  describe "submission_notification" do
    let(:mail) { SellerMailer.submission_notification }

    it "renders the headers" do
      mail.subject.should eq("Submission notification")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
