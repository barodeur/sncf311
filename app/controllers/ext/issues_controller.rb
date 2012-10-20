class Ext::IssuesController < Ext::ExtController
  before_filter :load_issue

  def show
    render text: @issue.id
  end

  protected
  def load_issue
    @issue = Issue.find params[:id]
  end
end
