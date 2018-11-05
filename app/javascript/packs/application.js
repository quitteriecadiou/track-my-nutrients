import "bootstrap";
import Chart from 'chart.js';

import { circleTracker } from '../components/circle_tracker';
import { suggestedRecipesShowNutrients } from '../components/suggested_recipes';
import { selectedDiet } from '../components/personal_info_form';

circleTracker();
suggestedRecipesShowNutrients();
selectedDiet();
