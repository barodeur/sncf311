class UsersController < ApplicationController
  def dashboard
  end

  def show
    @user = current_user
  end

  def update_location
    if current_user.gps
      current_user.update_attributes ll: [params[:latitude], params[:longitude]]
    end
    return render nothing: true
  end

  def change_location
    current_user.update_attribute :gps, params[:gps] ? true : false
    unless current_user.gps
      current_user.update_attributes ll: [params[:latitude], params[:longitude]]
    end
    redirect_to :user
  end
end
