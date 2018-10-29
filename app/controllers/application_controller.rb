class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    profile_dashboard_path(Profile.where(user: current_user).first)
  end
end
