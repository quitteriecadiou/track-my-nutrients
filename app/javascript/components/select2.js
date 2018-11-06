import $ from 'jquery';
import select2 from 'select2';


$('#fooditem_id').select2();

function initForm() {
  $('#ingredient_food_item_id').select2({
    placeholder: 'Choose an ingredient'
  });
}





import 'select2/dist/css/select2.css';

export { initForm }
