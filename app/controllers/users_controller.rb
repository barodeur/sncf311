class UsersController < ApplicationController
  def dashboard
  end

  def update_location
    current_user.update_attributes ll: [params[:latitude], params[:longitude]]
  end
end
