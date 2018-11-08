class ProfilesController < ApplicationController
  def new
    @profile = Profile.new
    @profile.user = User.find(current_user.id)
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user = User.find(current_user.id)

    if @profile.save

      redirect_to dashboard_path(@profile)

    else
      render :new
    end
  end

  def show
    @profile = Profile.find(current_user.profile.id)
    # Added recipes to food diary for today
    @added_recipes = @profile.added_recipes.where(date: Date.today)
    @personal_diet = @profile.personal_diet
    diet = current_user.profile.diet
    # Only recipes that are included in the user's diet
    diet_recipes = diet.recipes
    # Only recipes that either belong to the user or the admin (i.e. recipes that are common to everyone, from seed)
    @recipes = diet_recipes.where(profile_id: [User.where(email: "admin@admin.com").first.profile.id, current_user.profile.id])
    # Recipes used in suggested recipes section
    @suggested_recipes = @profile.suggested_recipes(@added_recipes, @recipes, current_user)


    ## Daily Tracker
    @tracker = AddedRecipe.tracker(@added_recipes)

    ## Weekly Tracker (day_1: yesterday to day_6: a week ago)

    # Individual tracker for each day of the week (used for graph)
    @tracker_day_0 = @tracker
    @tracker_day_1 = AddedRecipe.tracker(@profile.added_recipes.where(date: Date.today.prev_day(1)))
    @tracker_day_2 = AddedRecipe.tracker(@profile.added_recipes.where(date: Date.today.prev_day(2)))
    @tracker_day_3 = AddedRecipe.tracker(@profile.added_recipes.where(date: Date.today.prev_day(3)))
    @tracker_day_4 = AddedRecipe.tracker(@profile.added_recipes.where(date: Date.today.prev_day(4)))
    @tracker_day_5 = AddedRecipe.tracker(@profile.added_recipes.where(date: Date.today.prev_day(5)))
    @tracker_day_6 = AddedRecipe.tracker(@profile.added_recipes.where(date: Date.today.prev_day(6)))

    # Global tracker for whole week (used in progress bars)
    @tracker_week = {
      day_0: @tracker_day_0,
      day_1: @tracker_day_1,
      day_2: @tracker_day_2,
      day_3: @tracker_day_3,
      day_4: @tracker_day_4,
      day_5: @tracker_day_5,
      day_6: @tracker_day_6
    }
    # Tracker for whole week
    @tracker_sum = {}
    # Personal diet over a week
    @personal_diet_week = {}

    # For each nutrient global
    NUTRIENTS.each do |nutrient|
      # Personal diet over week is personal diet over day times 7
      @personal_diet_week["#{nutrient}_obj_personal".to_sym] = 7 * @personal_diet["#{nutrient}_obj_personal".to_sym]
      # Tracker sum is equal to the sum of nutrient's intake over the last 7 days
      @tracker_sum[nutrient.to_sym] = 0
      @tracker_week.each do |day, tracker|
        @tracker_sum[nutrient.to_sym] += tracker[nutrient.to_sym]
      end
    end
  end

  def edit
    @profile = Profile.find(current_user.profile.id)
  end

  def update

    @profile = Profile.find(params[:id])
    if @profile.update(profile_params)
      @personal_diet = PersonalDiet.where(profile_id: @profile.id).first
      @personal_diet.compute_personal_diet(@profile)
      redirect_to dashboard_path(@profile)
    else
      render :edit
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :date_of_birth, :gender, :height, :weight, :user_id, :diet_id)
  end
end
