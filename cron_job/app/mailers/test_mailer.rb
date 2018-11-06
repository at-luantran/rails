class TestMailer < ApplicationMailer
  def test_notif(newsletter)
    @newsletter = newsletter
    @users = User.all
    emails = @users.collect(&:email).join(", ")
    mail(to: emails, subject: 'My Newsletter')
  end
end
