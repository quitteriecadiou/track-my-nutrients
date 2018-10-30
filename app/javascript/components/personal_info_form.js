function showsDietCard() {
  const selectedDiet = document.getElementById("profile_diet_id");
  console.log(selectedDiet);
  selectedDiet.insertAdjacentHTML('afterend', "<%= render 'shared/diet_card' %>");
}

export { showsDietCard };
