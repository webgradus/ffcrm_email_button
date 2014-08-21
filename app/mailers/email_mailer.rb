class EmailMailer < ActionMailer::Base
  default from: 'no-reply@fatfreecrm.com'

  def email(sender, recipient, subject, message)
    @recipient = recipient
    @message  = message
    @sender = sender.full_name + " <" + sender.username + "@daqe.com>"
    mail(from: @sender, to: @recipient, subject: subject)
  end
end
