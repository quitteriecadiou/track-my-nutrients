class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  include Pundit

  NUTRIENTS = ["protein", "carbohydrate", "fat", "sugars", "fibres", "fa_saturated", "fa_mono", "fa_poly", "cholesterol", "salt", "calcium", "copper", "iron", "magnesium", "manganese", "phosphorus", "potassium", "sodium", "zinc", "retinol", "beta_carotene", "vitamin_d", "vitamin_e", "vitamin_c", "vitamin_b1", "vitamin_b2", "vitamin_b3", "vitamin_b5", "vitamin_b6", "vitamin_b9", "vitamin_b12"]

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
