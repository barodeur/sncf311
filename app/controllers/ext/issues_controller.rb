class Ext::IssuesController < Ext::ExtController
  before_filter :load_issue

  def show
  end

  protected
  def load_issue
    @issue = Issue.find params[:id]
  end
end
