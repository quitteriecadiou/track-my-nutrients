class ProfilesController < ApplicationController
  def new
    @profile = Profile.new
  end

  def create

    redirect_to profile_dashboard_path(current_user)
  end

  def show

  end

  def edit
    @profile = Profile.find(current_user.id)
  end

  def update

    redirect_to profile_dashboard_path(current_user)
  end
end
