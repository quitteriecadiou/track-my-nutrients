import "bootstrap";
import Chart from 'chart.js';

import { selectedIng } from '../recipes/edit';
import { circleTracker } from '../components/circle_tracker';
import { suggestedRecipesShowNutrients } from '../components/suggested_recipes';
import { backToSuggestedRecipeList } from '../components/suggested_recipes';
import { selectedDiet } from '../components/personal_info_form';
import '../components/select2';
import { initForm } from '../components/select2';

selectedIng();
initForm();
circleTracker();
suggestedRecipesShowNutrients();
backToSuggestedRecipeList();
selectedDiet();

window.initForm = initForm;

