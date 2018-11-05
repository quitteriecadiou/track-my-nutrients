function selectedDiet() {
  const dietSelection = document.getElementById('selected-diet')
  dietSelection.addEventListener("change", (event) => {
    event.preventDefault();
    const selectedDiet = dietSelection.querySelector('option:checked').text;
    const dietDescriptions = document.querySelectorAll('.diet-card-description');
    dietDescriptions.forEach((description) => {
      var descriptionTitle = description.querySelector('.diet-title p').innerHTML;
      if (descriptionTitle == selectedDiet) {
        description.classList.remove('hidden');
      } else {
        description.classList.add('hidden');
      }
    });
  });
}

export { selectedDiet };
