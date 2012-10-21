class Ext::IssuesController < Ext::ExtController
  before_filter :load_issue

  def show
  end

  def update
    @issue = Issue.find params[:id]
    @issue.update_attributes params[:issue]
    redirect_to ext_issue_path(@issue)
  end

  def urgence
  end

  protected
  def load_issue
    @issue = Issue.find params[:id]
  end
end
