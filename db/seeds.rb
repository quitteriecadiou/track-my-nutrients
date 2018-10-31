require 'csv'

# Diets
Diet.destroy_all
puts "Deleted diets"

Diet.create(name:"Regular", description:"For people who do not have any dietary restrictions and who only wish to track their daily nutrional intake.", protein_factor_diet: 1, carbohydrate_factor_diet: 1, fat_factor_diet: 1, sugars_factor_diet: 1, fibres_factor_diet: 1, fa_saturated_factor_diet: 1, fa_mono_factor_diet: 1, fa_poly_factor_diet: 1, cholesterol_factor_diet: 1, salt_factor_diet: 1, calcium_factor_diet: 1, copper_factor_diet: 1, iron_factor_diet: 1, magnesium_factor_diet: 1, manganese_factor_diet: 1, phosphorus_factor_diet: 1, potassium_factor_diet: 1, sodium_factor_diet: 1, zinc_factor_diet: 1, retinol_factor_diet: 1, beta_carotene_factor_diet: 1, vitamin_d_factor_diet: 1, vitamin_e_factor_diet: 1, vitamin_c_factor_diet: 1, vitamin_b1_factor_diet: 1, vitamin_b2_factor_diet: 1, vitamin_b3_factor_diet: 1, vitamin_b5_factor_diet: 1, vitamin_b6_factor_diet: 1, vitamin_b9_factor_diet: 1, vitamin_b12_factor_diet: 1)
Diet.create(name:"High Protein", description:"For people who do not have any dietary restrictions and who only wish to track their daily nutrional intake.", protein_factor_diet: 2, carbohydrate_factor_diet: 2, fat_factor_diet: 2, sugars_factor_diet: 2, fibres_factor_diet: 2, fa_saturated_factor_diet: 2, fa_mono_factor_diet: 2, fa_poly_factor_diet: 2, cholesterol_factor_diet: 2, salt_factor_diet: 2, calcium_factor_diet: 2, copper_factor_diet: 2, iron_factor_diet: 2, magnesium_factor_diet: 2, manganese_factor_diet: 2, phosphorus_factor_diet: 2, potassium_factor_diet: 2, sodium_factor_diet: 2, zinc_factor_diet: 2, retinol_factor_diet: 2, beta_carotene_factor_diet: 2, vitamin_d_factor_diet: 2, vitamin_e_factor_diet: 2, vitamin_c_factor_diet: 2, vitamin_b1_factor_diet: 2, vitamin_b2_factor_diet: 2, vitamin_b3_factor_diet: 2, vitamin_b5_factor_diet: 2, vitamin_b6_factor_diet: 2, vitamin_b9_factor_diet: 2, vitamin_b12_factor_diet: 2)
Diet.create(name:"Low Sodium", description:"For people who do not have any dietary restrictions and who only wish to track their daily nutrional intake.", protein_factor_diet: 1, carbohydrate_factor_diet: 1, fat_factor_diet: 1, sugars_factor_diet: 1, fibres_factor_diet: 1, fa_saturated_factor_diet: 1, fa_mono_factor_diet: 1, fa_poly_factor_diet: 1, cholesterol_factor_diet: 1, salt_factor_diet: 1, calcium_factor_diet: 1, copper_factor_diet: 1, iron_factor_diet: 1, magnesium_factor_diet: 1, manganese_factor_diet: 1, phosphorus_factor_diet: 1, potassium_factor_diet: 1, sodium_factor_diet: 1, zinc_factor_diet: 1, retinol_factor_diet: 1, beta_carotene_factor_diet: 1, vitamin_d_factor_diet: 1, vitamin_e_factor_diet: 1, vitamin_c_factor_diet: 1, vitamin_b1_factor_diet: 1, vitamin_b2_factor_diet: 1, vitamin_b3_factor_diet: 1, vitamin_b5_factor_diet: 1, vitamin_b6_factor_diet: 1, vitamin_b9_factor_diet: 1, vitamin_b12_factor_diet: 1)
Diet.create(name:"Low Carb", description:"For people who do not have any dietary restrictions and who only wish to track their daily nutrional intake.", protein_factor_diet: 1, carbohydrate_factor_diet: 1, fat_factor_diet: 1, sugars_factor_diet: 1, fibres_factor_diet: 1, fa_saturated_factor_diet: 1, fa_mono_factor_diet: 1, fa_poly_factor_diet: 1, cholesterol_factor_diet: 1, salt_factor_diet: 1, calcium_factor_diet: 1, copper_factor_diet: 1, iron_factor_diet: 1, magnesium_factor_diet: 1, manganese_factor_diet: 1, phosphorus_factor_diet: 1, potassium_factor_diet: 1, sodium_factor_diet: 1, zinc_factor_diet: 1, retinol_factor_diet: 1, beta_carotene_factor_diet: 1, vitamin_d_factor_diet: 1, vitamin_e_factor_diet: 1, vitamin_c_factor_diet: 1, vitamin_b1_factor_diet: 1, vitamin_b2_factor_diet: 1, vitamin_b3_factor_diet: 1, vitamin_b5_factor_diet: 1, vitamin_b6_factor_diet: 1, vitamin_b9_factor_diet: 1, vitamin_b12_factor_diet: 1)
puts "Created diets"


# Categories
Category.destroy_all
puts "Deleted categories"

Category.create(name: "Lunch")
Category.create(name: "Dinner")
Category.create(name: "Breakfast")
Category.create(name: "Snack")
Category.create(name: "Dessert")
puts "Created categories"


# FoodItems
FoodItem.destroy_all
puts "Deleted food items"

csv_options = { headers: :first_row }
csv_filepath = Rails.root.join('lib', 'seeds', 'food_items_mg.csv')
csv = CSV.parse(File.open(csv_filepath, "r:windows-1251:utf-8"), headers: true)
csv.each do |row|
  FoodItem.create(name: row["name"], protein: row["protein"], carbohydrate: row["carbohydrate"], fat: row["fat"], sugars: row["sugars"], fibres: row["fibres"], fa_saturated: row["fa_saturated"], fa_mono: row["fa_mono"], fa_poly: row["fa_poly"], cholesterol: row["cholesterol"], salt: row["salt"], calcium: row["calcium"], copper: row["copper"], iron: row["iron"], magnesium: row["magnesium"], manganese: row["manganese"], phosphorus: row["phosphorus"], potassium: row["potassium"], sodium: row["sodium"], zinc: row["zinc"], retinol: row["retinol"], beta_carotene: row["beta_carotene"], vitamin_d: row["vitamin_d"], vitamin_e: row["vitamin_e"], vitamin_c: row["vitamin_c"], vitamin_b1: row["vitamin_b1"], vitamin_b2: row["vitamin_b2"], vitamin_b3: row["vitamin_b3"], vitamin_b5: row["vitamin_b5"], vitamin_b6: row["vitamin_b6"], vitamin_b9: row["vitamin_b9"], vitamin_b12: row["vitamin_b12"] )
end
puts "Created food items"


# Recipes

# Ingredients


