module ApplicationHelper
  NUTRIENTS = ["protein", "carbohydrate", "fat", "sugars", "fibres", "fa_saturated", "fa_mono", "fa_poly", "cholesterol", "salt", "calcium", "copper", "iron", "magnesium", "manganese", "phosphorus", "potassium", "sodium", "zinc", "retinol", "beta_carotene", "vitamin_d", "vitamin_e", "vitamin_c", "vitamin_b1", "vitamin_b2", "vitamin_b3", "vitamin_b5", "vitamin_b6", "vitamin_b9", "vitamin_b12"]
  NUTRIENTS_UNIT = { protein: "g", carbohydrate: "g", fat: "g", sugars: "g", fibres: "g", fa_saturated: "g", fa_mono: "g", fa_poly: "g", cholesterol: "mg", salt: "g", calcium: "mg", copper: "mg", iron: "mg", magnesium: "mg", manganese: "mg", phosphorus: "mg", potassium: "mg", sodium: "mg", zinc: "mg", retinol: "µg", beta_carotene: "µg", vitamin_d: "µg", vitamin_e: "mg", vitamin_c: "mg", vitamin_b1: "mg", vitamin_b2: "mg", vitamin_b3: "mg", vitamin_b5: "mg", vitamin_b6: "mg", vitamin_b9: "µg", vitamin_b12: "µg" }
  UNIT_CONV = { g: 0.001, mg: 1, µg: 1000 }
end
