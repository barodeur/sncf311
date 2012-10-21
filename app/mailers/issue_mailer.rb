#encoding: utf-8
class IssueMailer < ActionMailer::Base
  default from: 'no-reply@sncf311.fr'

  def transfert_notification(email, issue)
    @issue = issue
    mail to: email, subject: "Notification de transfert du #{issue.id}"
  end

  def informer_voyageur(issue)
    @issue = issue
    mail to: issue.author.email, subject: "Votre signalement à été mis à jour"
  end
end
