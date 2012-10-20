class IssuesController < ApplicationController
  def my
    @issues = current_user.issues
  end

  def arround_me
    @issues = Issue.all
  end
end
