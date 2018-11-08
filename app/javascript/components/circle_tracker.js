function circleTracker() {
  const nutrients = document.getElementById('nutrient-tracker-values').querySelectorAll(".single-tracker")

    const nutrientTitle = document.querySelector(".tracker-nutrient-name").innerHTML
    nutrients[0].querySelector(".tracker-nutrient-name").classList.add("selected");

    const circleTrackerName = document.querySelector(".circle-tracker-title-nutrient")
    circleTrackerName.innerHTML = nutrientTitle

    const nutrientPercent = nutrients[0].querySelector(".progress-bar-label").innerHTML
    const nutrientPercentWithoutSign = nutrientPercent.substring(0,nutrientPercent.length-1)

    const nutrientConsumed = nutrients[0].querySelector(".nutrient-consumed").innerHTML
    const nutrientObjective = nutrients[0].querySelector(".nutrient-objective").innerHTML
    const nutrientUnit = nutrients[0].querySelector('.nutrient-unit').innerHTML

    const nutrientConsumedDiv = document.querySelector('.nutrient-eaten')
    const nutrientObjectiveDiv = document.querySelector('.nutrient-obj')


    nutrientConsumedDiv.innerHTML = nutrientConsumed.concat(nutrientUnit)
    nutrientObjectiveDiv.innerHTML = nutrientObjective.concat(nutrientUnit)

    const trackerDiv = document.querySelector('.circle-tracker-chart')
    trackerDiv.innerHTML = '<canvas id="circle-tracker-animation" style="height: 230px">'

    var ctx = document.getElementById("circle-tracker-animation");
    chart(nutrientPercentWithoutSign, ctx);

  nutrients.forEach((nutrient) => nutrient.addEventListener("click", event => {

    event.preventDefault();

    const nutrientsTitle = document.getElementById('nutrient-tracker-values').querySelectorAll(".tracker-nutrient-name")
    nutrientsTitle.forEach((nutrientTitle) => {
      nutrientTitle.classList.remove("selected");
    });

    const nutrientTitle = nutrient.querySelector(".tracker-nutrient-name").innerHTML

    nutrient.querySelector(".tracker-nutrient-name").classList.add("selected");

    const circleTrackerName = document.querySelector(".circle-tracker-title-nutrient")
    circleTrackerName.innerHTML = nutrientTitle

    const nutrientPercent = nutrient.querySelector(".progress-bar-label").innerHTML
    const nutrientPercentWithoutSign = nutrientPercent.substring(0,nutrientPercent.length-1)

    const nutrientConsumed = nutrient.querySelector(".nutrient-consumed").innerHTML
    const nutrientObjective = nutrient.querySelector(".nutrient-objective").innerHTML
    const nutrientUnit = nutrient.querySelector('.nutrient-unit').innerHTML

    const nutrientConsumedDiv = document.querySelector('.nutrient-eaten')
    const nutrientObjectiveDiv = document.querySelector('.nutrient-obj')


    nutrientConsumedDiv.innerHTML = nutrientConsumed.concat(nutrientUnit)
    nutrientObjectiveDiv.innerHTML = nutrientObjective.concat(nutrientUnit)


    const trackerDiv = document.querySelector('.circle-tracker-chart')
    trackerDiv.innerHTML = '<canvas id="circle-tracker-animation" style="height: 230px">'

    var ctx = document.getElementById("circle-tracker-animation");
    chart(nutrientPercentWithoutSign, ctx);

  }))

};

export { circleTracker };

function chart(nutrientPercentWithoutSign, ctx) {
  if (nutrientPercentWithoutSign > 100) {
    var circleTrackerTry = new Chart(ctx, {
      type: 'doughnut',
      data: {
        datasets: [{
          borderWidth: 0,
          backgroundColor: ['#F2994A', '#F5F5F5'],
          data: [100, 0]
        }],
        labels: [
          "% eaten",
          "% to eat",
        ]
      },
      options: {
        maintainAspectRatio: true,
        cutoutPercentage: 75,
        animation: {
          animateRotate: true
        },
        legend: {
          display: false
        }
      },
    });
  } else {
    var circleTrackerTry = new Chart(ctx, {
      type: 'doughnut',
      data: {
        datasets: [{
          borderWidth: 0,
          backgroundColor: ['#27AE60', '#F5F5F5'],
          data: [nutrientPercentWithoutSign, 100 - nutrientPercentWithoutSign]
        }],
        labels: [
          " % done",
          " % to do",
        ]
      },
      options: {
        maintainAspectRatio: true,
        cutoutPercentage: 75,
        animation: {
          animateRotate: true
        },
        legend: {
          display: false
        }
      },
    });
  }
};
