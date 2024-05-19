class MailSenderMailer < ApplicationMailer
  def appointment_reminder(customer_email)
    mail(to: customer_email, subject: "next appointment", from: "example@lalala.com")
  end
end
