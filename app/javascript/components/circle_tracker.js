

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
    if (nutrientPercentWithoutSign > 100) {
      var circleTrackerTry = new Chart(ctx, {
        type: 'doughnut',
        data: {
          datasets: [{
            borderWidth: 0,
            backgroundColor: ['#F2994A', '#F5F5F5'],
            data: [100, 0]
          }],
        },
        options: {
          cutoutPercentage: 75,
          animation: {
            animateRotate: true
          },
          elements: {
            center: {
            text: 'Desktop',
            color: '#36A2EB', //Default black
            fontStyle: 'Helvetica', //Default Arial
            sidePadding: 15 //Default 20 (as a percentage)
            }
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
        },
        options: {
          cutoutPercentage: 75,
          animation: {
            animateRotate: true
          },
          elements: {
            center: {
            text: 'Desktop',
            color: '#36A2EB', //Default black
            fontStyle: 'Helvetica', //Default Arial
            sidePadding: 15 //Default 20 (as a percentage)
            }
          }
        },
      });
    }

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

    if (nutrientPercentWithoutSign > 100) {
      var circleTrackerTry = new Chart(ctx, {
        type: 'doughnut',
        data: {
          datasets: [{
            borderWidth: 0,
            backgroundColor: ['#F2994A', '#F5F5F5'],
            data: [100, 0]
          }],
        },
        options: {
          cutoutPercentage: 75,
          animation: {
            animateRotate: true
          },
          elements: {
            center: {
            text: 'Desktop',
            color: '#36A2EB', //Default black
            fontStyle: 'Helvetica', //Default Arial
            sidePadding: 15 //Default 20 (as a percentage)
            }
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
        },
        options: {
          cutoutPercentage: 75,
          animation: {
            animateRotate: true
          },
          elements: {
            center: {
            text: 'Desktop',
            color: '#36A2EB', //Default black
            fontStyle: 'Helvetica', //Default Arial
            sidePadding: 15 //Default 20 (as a percentage)
            }
          }
        },
      });
    }

  }))

};

export { circleTracker };
