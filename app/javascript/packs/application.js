import "bootstrap";
import Chart from 'chart.js';


import { circleTracker } from '../components/circle_tracker';
import { suggestedRecipesShowNutrients } from '../components/suggested_recipes';
import { backToSuggestedRecipeList } from '../components/suggested_recipes';
import { selectedDiet } from '../components/personal_info_form';
import '../components/select2';
import { initForm } from '../components/select2';


if(document.querySelector('#personal-info-form')) {
  selectedDiet();
};

if(document.querySelector('#circle-tracker-animation')) {
  circleTracker();
  suggestedRecipesShowNutrients();
  backToSuggestedRecipeList();
};

if(document.querySelector('#new_ingredient')) {
  initForm();
};

window.initForm = initForm;

