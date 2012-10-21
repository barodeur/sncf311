#encoding: utf-8
class Ext::IssuesController < Ext::ExtController
  before_filter :load_issue

  def show
  end

  def update
    @issue = Issue.find params[:id]
    if @issue.update_attributes params[:issue]
      flash[:success] = "Signalement mis à jour avec succès."
    end
    redirect_to ext_issue_path(@issue)
  end

  def urgence
  end

  def coming_soon
  end

  protected
  def load_issue
    @issue = Issue.find params[:id]
  end
end
