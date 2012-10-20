class IssueMailer < ActionMailer::Base
  default from: 'no-reply@sncf311.fr'

  def transfert_notification(email, issue)
    @issue = issue
    mail to: email, subject: "Notification"
  end
end
