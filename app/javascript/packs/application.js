import "bootstrap";
import Chart from 'chart.js';


import { selectedIng } from '../recipes/edit';
import { showsDietCard } from '../components/personal_info_form';
import { circleTracker } from '../components/circle_tracker';


selectedIng();
showsDietCard();
circleTracker();

