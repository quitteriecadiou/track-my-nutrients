module ApplicationHelper
  NUTRIENTS = ["protein", "carbohydrate", "fat", "sugars", "fibres", "fa_saturated", "fa_mono", "fa_poly", "salt", "calcium", "copper", "iron", "magnesium", "manganese", "phosphorus", "potassium", "sodium", "zinc", "retinol", "beta_carotene", "vitamin_e", "vitamin_c", "vitamin_b1", "vitamin_b2", "vitamin_b3", "vitamin_b5", "vitamin_b6", "vitamin_b9", "vitamin_b12"]


  NUTRIENTS_UNIT = { protein: "g",
                     carbohydrate: "g",
                     fat: "g",
                     sugars: "g",
                     fibres: "g",
                     fa_saturated: "g",
                     fa_mono: "g",
                     fa_poly: "g",
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
             nutrients: ["protein","carbohydrate","fat","sugars","fibres","fa_saturated","fa_mono","fa_poly", "salt","calcium", "copper", "iron", "magnesium", "manganese","phosphorus","potassium","sodium","zinc","retinol","beta_carotene","vitamin_e","vitamin_c","vitamin_b1","vitamin_b2","vitamin_b3","vitamin_b5","vitamin_b6","vitamin_b9","vitamin_b12"]
};

  DIET_2 = { hash_name: "High Protein",
             nutrients: ["protein","carbohydrate","fat","sugars","fibres","fa_saturated","fa_mono","fa_poly", "salt","calcium", "copper", "iron", "magnesium", "manganese","phosphorus","potassium","sodium","zinc","retinol","beta_carotene","vitamin_e","vitamin_c","vitamin_b1","vitamin_b2","vitamin_b3","vitamin_b5","vitamin_b6","vitamin_b9","vitamin_b12"]
  };

  DIET_3 = { hash_name: "Low Sodium",
             nutrients: ["sodium","protein","carbohydrate","fat","sugars","fibres","fa_saturated","fa_mono","fa_poly", "salt","calcium", "copper", "iron", "magnesium", "manganese","phosphorus","potassium","zinc","retinol","beta_carotene","vitamin_e","vitamin_c","vitamin_b1","vitamin_b2","vitamin_b3","vitamin_b5","vitamin_b6","vitamin_b9","vitamin_b12"]
  };

  DIET_4 = { hash_name: "Low Carb",
             nutrients: ["carbohydrate","protein","fat","sugars","fibres","fa_saturated","fa_mono","fa_poly", "salt","calcium", "copper", "iron", "magnesium", "manganese","phosphorus","potassium","sodium","zinc","retinol","beta_carotene","vitamin_e","vitamin_c","vitamin_b1","vitamin_b2","vitamin_b3","vitamin_b5","vitamin_b6","vitamin_b9","vitamin_b12"]
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


  NUTRIENTS_UL = {
    protein: 1,
    carbohydrate: 1,
    fat: 1,
    sugars: 1,
    fibres: 1.2,
    fa_saturated: 1,
    fa_mono: 1,
    fa_poly: 1,
    cholesterol: 1,
    salt: 1,
    calcium: 2,
    copper: 1,
    iron: 2,
    magnesium: 2,
    manganese: 2,
    phosphorus: 2,
    potassium: 2,
    sodium: 2,
    zinc: 2,
    retinol: 1,
    beta_carotene: 2,
    vitamin_d: 2,
    vitamin_e: 1,
    vitamin_c: 2,
    vitamin_b1: 2,
    vitamin_b2: 2,
    vitamin_b3: 2,
    vitamin_b5: 2,
    vitamin_b6: 2,
    vitamin_b9: 2,
    vitamin_b12: 1.5
  }
end
