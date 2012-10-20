#encoding: utf-8
class IssueStepsController < ApplicationController
  include Wicked::Wizard
  steps :where, :localize_me, :chose_type, :train_location

  def show
    if session[:current_issue_id]
      @issue = Issue.find session[:current_issue_id]
    else
      @issue = current_user.issues.build
      @issue.save(false)
      session[:current_issue_id] = @issue.id
    end

    case step
    when :localize_me
      @issue.update_attribute :where, params[:where]
      @location = Geocoder.search(current_user.ll.join(',')).first
      @trains = Train.all
    when :chose_type
      @issue.update_attribute :train_id, params[:train_id]
    when :train_location
      @issue.update_attribute :type, params[:type]
    end
    render_wizard
  end

  def update
    @issue = Issue.find session[:current_issue_id]
    if @issue.update_attributes params[:issue]
      flash[:success] = "Merci d'avoir rapporté cette incident"
    end
    redirect_to :root
  end
end
