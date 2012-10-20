class IssuesController < ApplicationController
  def show
    @issue = Issue.find params[:id]
  end

  def my
    @issues = current_user.issues
  end

  def arround_me
    @issues = Issue.all
  end
end
