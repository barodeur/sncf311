class Backoffice::BackofficeController < ApplicationController
  layout 'backoffice'

  before_filter :count_waiting_issues

  def dashboard
  end

  protected
  def count_waiting_issues
    @waiting_issues_count = {}
    @waiting_issues_count[:materiel] = Issue.where(cat: 'materiel').count
    @waiting_issues_count[:infra] = Issue.where(cat: 'infra').count
    @waiting_issues_count[:gare] = Issue.where(cat: 'gare').count
    @waiting_issues_count[:voyage_sncf] = Issue.where(cat: 'voyage_sncf').count
  end
end
