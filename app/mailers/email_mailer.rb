class EmailMailer < ActionMailer::Base
  default from: 'no-reply@fatfreecrm.com'

  def email(sender, recipient, subject, message)
    @recipient = recipient
    @message  = message
    @sender = sender
    mail(from: @sender.email, to: @recipient, subject: subject)
  end
end
