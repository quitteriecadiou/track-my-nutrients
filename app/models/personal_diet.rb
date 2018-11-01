class PersonalDiet < ApplicationRecord
  belongs_to :profile


  def compute_personal_diet(profile)
    @profile = profile
    @personal_diet = PersonalDiet.where(profile_id: @profile.id).first


    @age = age(@profile.date_of_birth)
    @gender = @profile.gender
    @weight = @profile.weight
    @height = @profile.height

    # Nutrients based on weight and height

    @personal_diet.protein_obj_personal = 830 * @weight


    # Nutrients based on age and gender
    if @gender == "Female"
      # For all females, regardless of age
      @personal_diet.magnesium_obj_personal = 320
      @personal_diet.zinc_obj_personal = 8
      @personal_diet.manganese_obj_personal = 1.8
      @personal_diet.vitamin_c_obj_personal = 75
      @personal_diet.vitamin_b1_obj_personal = 1.1
      @personal_diet.vitamin_b2_obj_personal = 1.1
      @personal_diet.vitamin_b3_obj_personal = 14
      @personal_diet.sugars_obj_personal = 25000

    elsif @gender == "Male"
      # For all males, regardless of age
      @personal_diet.magnesium_obj_personal = 420
      @personal_diet.zinc_obj_personal = 11
      @personal_diet.manganese_obj_personal = 2.3
      @personal_diet.vitamin_c_obj_personal = 90
      @personal_diet.vitamin_b1_obj_personal = 1.2
      @personal_diet.vitamin_b2_obj_personal = 1.3
      @personal_diet.vitamin_b3_obj_personal = 16
      @personal_diet.sugars_obj_personal = 37500

    end


    if @age > 50
      # For males and females over 50
      @personal_diet.iron_obj_personal = 8

      if @gender == "Female"
        # For females over 50
        @personal_diet.calcium_obj_personal = 1200
        @personal_diet.vitamin_b6_obj_personal = 1.5
        @personal_diet.fibres_obj_personal = 22400
        @personal_diet.fa_poly_obj_personal = 11000
        @personal_diet.fat_obj_personal = 35200

      elsif @gender == "Male"
        # For males over 50
        @personal_diet.calcium_obj_personal = 1000
        @personal_diet.vitamin_b6_obj_personal = 1.7
        @personal_diet.fibres_obj_personal = 28000
        @personal_diet.fa_poly_obj_personal = 14000
        @personal_diet.fat_obj_personal = 44000
      end

    else
      # For males and females under 50
      @personal_diet.calcium_obj_personal = 1000
      @personal_diet.vitamin_b6_obj_personal = 1.3

      if @gender == "Female"
        # For females under 50
        @personal_diet.iron_obj_personal = 18
        @personal_diet.fibres_obj_personal = 26000
        @personal_diet.fa_poly_obj_personal = 12000
        @personal_diet.fat_obj_personal = 44000

      elsif @gender == "Male"
        # For males under 50
        @personal_diet.iron_obj_personal = 8
        @personal_diet.fibres_obj_personal = 32000
        @personal_diet.fa_poly_obj_personal = 17000
        @personal_diet.fat_obj_personal = 52800
      end
    end

    # Nutrients calculation regardless of weight, height, age and gender
    @personal_diet.phosphorus_obj_personal = 700
    @personal_diet.potassium_obj_personal = 4700
    @personal_diet.sodium_obj_personal = 2300
    @personal_diet.copper_obj_personal = 0.9
    @personal_diet.vitamin_e_obj_personal = 15
    @personal_diet.vitamin_b12_obj_personal = 0.0024
    @personal_diet.vitamin_b9_obj_personal = 0.4
    @personal_diet.vitamin_d_obj_personal = 15
    @personal_diet.vitamin_b5_obj_personal = 5
    @personal_diet.retinol_obj_personal = 0.8
    @personal_diet.beta_carotene_obj_personal = 7

    @personal_diet.carbohydrate_obj_personal = 130000
    @personal_diet.salt_obj_personal = 6000
    @personal_diet.fa_saturated_obj_personal = 22000
    @personal_diet.cholesterol_obj_personal = 300
    @personal_diet.fa_mono_obj_personal = 44000


    # Compute chosen diet factors

    NUTRIENTS.each do |nutrient|
      nutrient_obj_personal = "#{nutrient}_obj_personal".to_sym
      nutrient_factor_diet = "#{nutrient}_factor_diet".to_sym
      diet = Diet.find(@profile.diet_id)

      @personal_diet[nutrient_obj_personal] = @personal_diet[nutrient_obj_personal] * diet[nutrient_factor_diet]
    end

    @personal_diet.save
  end


  private

  def age(dob)
    now = Time.now.utc.to_date
    now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
  end
end
