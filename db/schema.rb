# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_10_24_143038) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "added_recipes", force: :cascade do |t|
    t.date "date"
    t.bigint "recipe_id"
    t.bigint "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_added_recipes_on_profile_id"
    t.index ["recipe_id"], name: "index_added_recipes_on_recipe_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diet_recipes", force: :cascade do |t|
    t.bigint "diet_id"
    t.bigint "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["diet_id"], name: "index_diet_recipes_on_diet_id"
    t.index ["recipe_id"], name: "index_diet_recipes_on_recipe_id"
  end

  create_table "diets", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.float "protein_obj_diet"
    t.float "carbohydrate_obj_diet"
    t.float "fat_obj_diet"
    t.float "sugars_obj_diet"
    t.float "fibres_obj_diet"
    t.float "fa_saturated_obj_diet"
    t.float "fa_mono_obj_diet"
    t.float "fa_poly_obj_diet"
    t.float "cholesterol_obj_diet"
    t.float "salt_obj_diet"
    t.float "calcium_obj_diet"
    t.float "copper_obj_diet"
    t.float "iron_obj_diet"
    t.float "magnesium_obj_diet"
    t.float "manganese_obj_diet"
    t.float "phosphorus_obj_diet"
    t.float "potassium_obj_diet"
    t.float "sodium_obj_diet"
    t.float "zinc_obj_diet"
    t.float "retinol_obj_diet"
    t.float "beta_carotene_obj_diet"
    t.float "vitamin_d_obj_diet"
    t.float "vitamin_e_obj_diet"
    t.float "vitamin_c_obj_diet"
    t.float "vitamin_b1_obj_diet"
    t.float "vitamin_b2_obj_diet"
    t.float "vitamin_b3_obj_diet"
    t.float "vitamin_b5_obj_diet"
    t.float "vitamin_b6_obj_diet"
    t.float "vitamin_b9_obj_diet"
    t.float "vitamin_b12_obj_diet"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "food_items", force: :cascade do |t|
    t.string "name"
    t.float "protein"
    t.float "carbohydrate"
    t.float "fat"
    t.float "sugars"
    t.float "fibres"
    t.float "fa_saturated"
    t.float "fa_mono"
    t.float "fa_poly"
    t.float "cholesterol"
    t.float "salt"
    t.float "calcium"
    t.float "copper"
    t.float "iron"
    t.float "magnesium"
    t.float "manganese"
    t.float "phosphorus"
    t.float "potassium"
    t.float "sodium"
    t.float "zinc"
    t.float "retinol"
    t.float "beta_carotene"
    t.float "vitamin_d"
    t.float "vitamin_e"
    t.float "vitamin_c"
    t.float "vitamin_b1"
    t.float "vitamin_b2"
    t.float "vitamin_b3"
    t.float "vitamin_b5"
    t.float "vitamin_b6"
    t.float "vitamin_b9"
    t.float "vitamin_b12"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.bigint "food_item_id"
    t.bigint "recipe_id"
    t.integer "quantity"
    t.string "unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["food_item_id"], name: "index_ingredients_on_food_item_id"
    t.index ["recipe_id"], name: "index_ingredients_on_recipe_id"
  end

  create_table "personal_diets", force: :cascade do |t|
    t.bigint "diet_id"
    t.float "protein_obj_personal"
    t.float "carbohydrate_obj_personal"
    t.float "fat_obj_personal"
    t.float "sugars_obj_personal"
    t.float "fibres_obj_personal"
    t.float "fa_saturated_obj_personal"
    t.float "fa_mono_obj_personal"
    t.float "fa_poly_obj_personal"
    t.float "cholesterol_obj_personal"
    t.float "salt_obj_personal"
    t.float "calcium_obj_personal"
    t.float "copper_obj_personal"
    t.float "iron_obj_personal"
    t.float "magnesium_obj_personal"
    t.float "manganese_obj_personal"
    t.float "phosphorus_obj_personal"
    t.float "potassium_obj_personal"
    t.float "sodium_obj_personal"
    t.float "zinc_obj_personal"
    t.float "retinol_obj_personal"
    t.float "beta_carotene_obj_personal"
    t.float "vitamin_d_obj_personal"
    t.float "vitamin_e_obj_personal"
    t.float "vitamin_c_obj_personal"
    t.float "vitamin_b1_obj_personal"
    t.float "vitamin_b2_obj_personal"
    t.float "vitamin_b3_obj_personal"
    t.float "vitamin_b5_obj_personal"
    t.float "vitamin_b6_obj_personal"
    t.float "vitamin_b9_obj_personal"
    t.float "vitamin_b12_obj_personal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["diet_id"], name: "index_personal_diets_on_diet_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "date_of_birth"
    t.string "gender"
    t.integer "height"
    t.integer "weight"
    t.bigint "user_id"
    t.bigint "personal_diet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["personal_diet_id"], name: "index_profiles_on_personal_diet_id"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "prep_time"
    t.integer "portion"
    t.bigint "category_id"
    t.string "difficulty"
    t.float "protein_per_portion"
    t.float "carbohydrate_per_portion"
    t.float "fat_per_portion"
    t.float "sugars_per_portion"
    t.float "fibres_per_portion"
    t.float "fa_saturated_per_portion"
    t.float "fa_mono_per_portion"
    t.float "fa_poly_per_portion"
    t.float "cholesterol_per_portion"
    t.float "salt_per_portion"
    t.float "calcium_per_portion"
    t.float "copper_per_portion"
    t.float "iron_per_portion"
    t.float "magnesium_per_portion"
    t.float "manganese_per_portion"
    t.float "phosphorus_per_portion"
    t.float "potassium_per_portion"
    t.float "sodium_per_portion"
    t.float "zinc_per_portion"
    t.float "retinol_per_portion"
    t.float "beta_carotene_per_portion"
    t.float "vitamin_d_per_portion"
    t.float "vitamin_e_per_portion"
    t.float "vitamin_c_per_portion"
    t.float "vitamin_b1_per_portion"
    t.float "vitamin_b2_per_portion"
    t.float "vitamin_b3_per_portion"
    t.float "vitamin_b5_per_portion"
    t.float "vitamin_b6_per_portion"
    t.float "vitamin_b9_per_portion"
    t.float "vitamin_b12_per_portion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_recipes_on_category_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "added_recipes", "profiles"
  add_foreign_key "added_recipes", "recipes"
  add_foreign_key "diet_recipes", "diets"
  add_foreign_key "diet_recipes", "recipes"
  add_foreign_key "ingredients", "food_items"
  add_foreign_key "ingredients", "recipes"
  add_foreign_key "personal_diets", "diets"
  add_foreign_key "profiles", "personal_diets"
  add_foreign_key "profiles", "users"
  add_foreign_key "recipes", "categories"
end
