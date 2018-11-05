import "bootstrap";
import Chart from 'chart.js';



import { selectedIng } from '../recipes/edit';
import { circleTracker } from '../components/circle_tracker';
import { suggestedRecipesShowNutrients } from '../components/suggested_recipes';
import { backToSuggestedRecipeList } from '../components/suggested_recipes';
import { selectedDiet } from '../components/personal_info_form';




selectedIng();
circleTracker();
suggestedRecipesShowNutrients();
backToSuggestedRecipeList();
selectedDiet();
