class IssueStepsController < ApplicationController
  include Wicked::Wizard
  steps :where, :localize_me, :chose_type

  def show
    @issue = Issue.new
    case step
    when :where
    when :localize_me
      @issue.update_attribute :where, params[:where]
      @location = Geocoder.search(current_user.ll.join(',')).first
      @trains = Train.all
    when :chose_type
      @issue.update_attribute :train_id, params[:train_id]
    end
    render_wizard
  end
end
