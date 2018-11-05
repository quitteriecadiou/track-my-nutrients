

function circleTracker() {
  const nutrients = document.querySelectorAll(".single-tracker")

    const nutrientTitle = document.querySelector(".tracker-nutrient-name").innerHTML
    nutrients[0].querySelector(".tracker-nutrient-name").classList.add("selected");

    const circleTrackerName = document.querySelector(".circle-tracker-title-nutrient")
    circleTrackerName.innerHTML = nutrientTitle

    const nutrientPercent = nutrients[0].querySelector(".progress-bar-label").innerHTML
    const nutrientPercentWithoutSign = nutrientPercent.substring(0,nutrientPercent.length-1)

    const trackerDiv = document.querySelector('.circle-tracker-progress')
    trackerDiv.innerHTML = '<canvas id="circle-tracker-animation"></canvas>'

    var ctx = document.getElementById("circle-tracker-animation");
    var circleTrackerTry = new Chart(ctx, {
      type: 'doughnut',
      data: {
        datasets: [{
          backgroundColor: ['#27AE60', '#F5F5F5'],
          data: [nutrientPercentWithoutSign, 100 - nutrientPercentWithoutSign]
        }],
      },
      options: {
        animation: {
          animateRotate: true
        }
      },
    });

  nutrients.forEach((nutrient) => nutrient.addEventListener("click", event => {

    event.preventDefault();

    const nutrientsTitle = document.querySelectorAll(".tracker-nutrient-name")
    nutrientsTitle.forEach((nutrientTitle) => {
      nutrientTitle.classList.remove("selected");
    });

    const nutrientTitle = nutrient.querySelector(".tracker-nutrient-name").innerHTML

    nutrient.querySelector(".tracker-nutrient-name").classList.add("selected");

    const circleTrackerName = document.querySelector(".circle-tracker-title-nutrient")
    circleTrackerName.innerHTML = nutrientTitle

    const nutrientPercent = nutrient.querySelector(".progress-bar-label").innerHTML
    const nutrientPercentWithoutSign = nutrientPercent.substring(0,nutrientPercent.length-1)

    const trackerDiv = document.querySelector('.circle-tracker-progress')
    trackerDiv.innerHTML = '<canvas id="circle-tracker-animation"></canvas>'

    var ctx = document.getElementById("circle-tracker-animation");
    var circleTrackerTry = new Chart(ctx, {
      type: 'doughnut',
      data: {
        datasets: [{
          backgroundColor: ['#27AE60', '#F5F5F5'],
          data: [nutrientPercentWithoutSign, 100 - nutrientPercentWithoutSign]
        }],
      },
      options: {
        animation: {
          animateRotate: true
        }
      },
    });
  }))

};

export { circleTracker };
