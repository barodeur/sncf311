class Backoffice::IssuesController < Backoffice::BackofficeController
  def index
    @issues = Issue.all
    @issues = @issues.where(cat: params[:cat]) if params[:cat]
  end

  def show
    @issue = Issue.find params[:id]
  end
end
