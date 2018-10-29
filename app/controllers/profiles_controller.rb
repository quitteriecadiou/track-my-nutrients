class ProfilesController < ApplicationController
  def new
    @profile = Profile.new
    @profile.user = User.find(current_user.id)
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user = User.find(current_user.id)

    if @profile.save
      redirect_to profile_dashboard_path(@profile)
    else
      render :new
    end
  end

  def show

  end

  def edit
    @profile = Profile.where(user: current_user).first
  end

  def update

    redirect_to profile_dashboard_path(@profile)
  end

  private

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :date_of_birth, :gender, :height, :weight, :user_id)
  end
end
