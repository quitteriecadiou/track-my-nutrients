module ApplicationHelper
  NUTRIENTS = ["protein", "carbohydrate", "fat", "sugars", "fibres", "fa_saturated", "fa_mono", "fa_poly", "cholesterol", "salt", "calcium", "copper", "iron", "magnesium", "manganese", "phosphorus", "potassium", "sodium", "zinc", "retinol", "beta_carotene", "vitamin_d", "vitamin_e", "vitamin_c", "vitamin_b1", "vitamin_b2", "vitamin_b3", "vitamin_b5", "vitamin_b6", "vitamin_b9", "vitamin_b12"]


  NUTRIENTS_UNIT = { protein: "g",
                     carbohydrate: "g",
                     fat: "g",
                     sugars: "g",
                     fibres: "g",
                     fa_saturated: "g",
                     fa_mono: "g",
                     fa_poly: "g",
                     cholesterol: "mg",
                     salt: "g",
                     calcium: "mg",
                     copper: "mg",
                     iron: "mg",
                     magnesium: "mg",
                     manganese: "mg",
                     phosphorus: "mg",
                     potassium: "mg",
                     sodium: "mg",
                     zinc: "mg",
                     retinol: "µg",
                     beta_carotene: "µg",
                     vitamin_d: "µg",
                     vitamin_e: "mg",
                     vitamin_c: "mg",
                     vitamin_b1: "mg",
                     vitamin_b2: "mg",
                     vitamin_b3: "mg",
                     vitamin_b5: "mg",
                     vitamin_b6: "mg",
                     vitamin_b9: "µg",
                     vitamin_b12: "µg"
                    }


  UNIT_CONV = { g: 0.001,
                mg: 1,
                µg: 1000 }

  DIET_1 = { hash_name: "Regular",
             nutrients: ["protein","carbohydrate","fat","sugars","fibres","fa_saturated","fa_mono","fa_poly","cholesterol", "salt","calcium", "copper", "iron", "magnesium", "manganese","phosphorus","potassium","sodium","zinc","retinol","beta_carotene","vitamin_d","vitamin_e","vitamin_c","vitamin_b1","vitamin_b2","vitamin_b3","vitamin_b5","vitamin_b6","vitamin_b9","vitamin_b12"]
};

  DIET_2 = { hash_name: "High Protein",
             nutrients: ["protein","carbohydrate","fat","sugars","fibres","fa_saturated","fa_mono","fa_poly","cholesterol", "salt","calcium", "copper", "iron", "magnesium", "manganese","phosphorus","potassium","sodium","zinc","retinol","beta_carotene","vitamin_d","vitamin_e","vitamin_c","vitamin_b1","vitamin_b2","vitamin_b3","vitamin_b5","vitamin_b6","vitamin_b9","vitamin_b12"]
  };

  DIET_3 = { hash_name: "Low Sodium",
             nutrients: ["sodium","protein","carbohydrate","fat","sugars","fibres","fa_saturated","fa_mono","fa_poly","cholesterol", "salt","calcium", "copper", "iron", "magnesium", "manganese","phosphorus","potassium","zinc","retinol","beta_carotene","vitamin_d","vitamin_e","vitamin_c","vitamin_b1","vitamin_b2","vitamin_b3","vitamin_b5","vitamin_b6","vitamin_b9","vitamin_b12"]
  };

  DIET_4 = { hash_name: "Low Carb",
             nutrients: ["carbohydrate","protein","fat","sugars","fibres","fa_saturated","fa_mono","fa_poly","cholesterol", "salt","calcium", "copper", "iron", "magnesium", "manganese","phosphorus","potassium","sodium","zinc","retinol","beta_carotene","vitamin_d","vitamin_e","vitamin_c","vitamin_b1","vitamin_b2","vitamin_b3","vitamin_b5","vitamin_b6","vitamin_b9","vitamin_b12"]
  };

  DIET_ARRAY = [DIET_1, DIET_2, DIET_3, DIET_4]


  HASH_NUTRIENT = {
    protein: "Protein",
    carbohydrate: "Carbohydrate",
    sodium: "Sodium",
    calcium: "Calcium",
    magnesium: "Magnesium",
    fat: "Fat",
    iron: "Iron",
    manganese: "Manganese",
    cholesterol: "Cholesterol",
    sugars: "Sugar",
    fibres: "Fibres",
    fa_saturated: "Saturated Fat",
    fa_mono: "Monosaturated Fat",
    fa_poly: "Polysaturated Fat",
    salt: "Salt",
    copper: "Copper",
    potassium: "Potassium",
    beta_carotene: "Beta Carotene",
    zinc: "Zinc",
    retinol: "Retinol",
    vitamin_c: "Vitamin C",
    vitamin_d: "Vitamin D",
    vitamin_e: "Vitamin E",
    phosphorus: "Phosphorus",
    vitamin_b1: "Vitamin B1",
    vitamin_b2: "Vitamin B2",
    vitamin_b3: "Vitamin B3",
    vitamin_b5: "Vitamin B5",
    vitamin_b6: "Vitamin B6",
    vitamin_b9: "Vitamin B9",
    vitamin_b12: "Vitamin B12"
  }
end
