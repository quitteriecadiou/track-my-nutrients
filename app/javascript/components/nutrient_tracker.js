function toggleDayOrWeek() {
  let daySelect = document.querySelector('#day');

  let weekSelect = document.querySelector('#week');

  let dayTracker = document.getElementById('day-tracker-body');
  let weekTracker = document.getElementById('week-tracker-body');

  daySelect.classList.add('selected');

  daySelect.addEventListener('click', (event) => {
    event.preventDefault();
    dayTracker.classList.remove('hidden');
    weekTracker.classList.add('hidden');
    daySelect.classList.add('selected');
    weekSelect.classList.remove('selected');
  });

  weekSelect.addEventListener('click', (event) => {
    event.preventDefault();
    weekTracker.classList.remove('hidden');
    dayTracker.classList.add('hidden');
    daySelect.classList.remove('selected');
    weekSelect.classList.add('selected');
  });
}


export { toggleDayOrWeek }
