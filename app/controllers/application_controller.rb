class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  include Pundit
  include ApplicationHelper


  def after_sign_in_path_for(resource)
    dashboard_path(current_user.profile.id)
  end

  # META DATA
  # Rails image_url helper requires you setup your host to generate the absolute
  # url needed to load your images from the external world (Facebook, Twitter, ...).

  def default_url_options
    { host: ENV["track-my-nutrients.herokuapp.com"] || "localhost:3000" }
  end
end
