# encoding: utf-8
class Backoffice::IssuesController < Backoffice::BackofficeController
  before_filter :load_issue, only: [:show, :transfert]

  def index
    @issues = Issue.all
    @issues = @issues.where(cat: params[:cat]) if params[:cat]
  end

  def show
  end

  def transfert
    if IssueMailer.transfert_notification(params[:email], @issue).deliver
      flash[:success] = "Transfert effectué à #{params[:email]}"
      redirect_to backoffice_issue_path(@issue)
    end
  end

  def update
    @issue = Issue.find params[:id]
    if @issue.update_attributes params[:issue]
      flash[:success] = "Signalement mis à jour avec succès."
    end
    IssueMailer.informer_voyageur(@issue).deliver if params[:informer_voyageur]
    redirect_to backoffice_issue_path(@issue)
  end

  protected
  def load_issue
    @issue = Issue.find params[:id]
  end
end
