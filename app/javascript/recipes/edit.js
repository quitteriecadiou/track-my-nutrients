function selectedIng() {
  const ingSelection = document.getElementById('ingredient_food_item_id');
  console.log('pre-event')
  ingSelection.addEventListener('change', (event) => {
    console.log('event')
    event.preventDefault();
    const selectedIng = ingSelection.querySelector('option:checked').text;
    const foodItems = document.querySelectorAll('.food-item-attributes');
    foodItems.forEach((foodItem) => {
      var foodItemName = foodItem.querySelector('.food-item-name').innerHTML;
      if (foodItemName == selectedIng) {
        foodItem.classList.remove('hidden');
      } else {
        foodItem.classList.add('hidden');
      }
    });
  });
}

export { selectedIng };
