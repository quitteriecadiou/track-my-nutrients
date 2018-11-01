function circleTracker() {
  var ctx = document.getElementById("circle-tracker-animation");
  var circleTrackerTry = new Chart(ctx, {
    type: 'doughnut',
    data: {
      datasets: [{
        backgroundColor: ['#27AE60', '#ffffff'],
        data: [50, 50]
      }],
    },
  });
};

export { circleTracker };
