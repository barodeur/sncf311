class IssueStepsController < ApplicationController
  include Wicked::Wizard
  steps :where, :localize_me, :chose_type

  def show
    @issue = Issue.new
    case step
    when :where
    when :localize_me
      @issue.where = params[:where]
    when :chose_type
      @issue.train_id = params[:train_id]
    end
    render_wizard
  end
end
