class IssuesController < ApplicationController
  def my
    render text: current_user.issues.count
  end
end
