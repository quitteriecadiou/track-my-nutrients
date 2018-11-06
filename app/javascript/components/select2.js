import $ from 'jquery';
import select2 from 'select2';


$('#fooditem_id').select2();

function initForm() {
  $('#ingredient_food_item_id').select2({
    placeholder: 'Choose an ingredient'
  });

  $('#ingredient_food_item_id').on('change', (event) => {
    const ingSelection = document.getElementById('ingredient_food_item_id');
    const selectedIng = ingSelection.querySelector('option:checked').text;
    const foodItems = document.querySelectorAll('.food-item-attributes');
    foodItems.forEach((foodItem) => {
      let foodItemName = foodItem.querySelector('.food-item-name').innerHTML;
      if (foodItemName == selectedIng) {
        foodItem.classList.remove('hidden');
      } else {
        foodItem.classList.add('hidden');
      }
    });
  });
}





import 'select2/dist/css/select2.css';

export { initForm }
