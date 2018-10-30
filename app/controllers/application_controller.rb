class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  NUTRIENTS = ["protein", "carbohydrate", "fat", "sugars", "fibres", "fa_saturated", "fa_mono", "fa_poly", "cholesterol", "salt", "calcium", "copper", "iron", "magnesium", "manganese", "phosphorus", "potassium", "sodium", "zinc", "retinol", "beta_carotene", "vitamin_d", "vitamin_e", "vitamin_c", "vitamin_b1", "vitamin_b2", "vitamin_b3", "vitamin_b5", "vitamin_b6", "vitamin_b9", "vitamin_b12"]

  def after_sign_in_path_for(resource)
    profile_dashboard_path(Profile.where(user: current_user).first)
  end

end
