class Emailer < ActionMailer::Base
  default from: "snapshot@example.com", subject: 'Dashboard snapshot'
  
  def send_snapshot(image, name, email)
    attachments[name] = image
    mail(to: email)
  end
end
