function weekTracker() {
  const nutrientsName = document.getElementById('week-tracker-full').querySelectorAll(".single-tracker")

  // Old Code
  //   const nutrientTitle = document.querySelector(".tracker-nutrient-name").innerHTML
  //   nutrients[0].querySelector(".tracker-nutrient-name").classList.add("selected");

  //   const circleTrackerName = document.querySelector(".circle-tracker-title-nutrient")
  //   circleTrackerName.innerHTML = nutrientTitle

  //   const nutrientPercent = nutrients[0].querySelector(".progress-bar-label").innerHTML
  //   const nutrientPercentWithoutSign = nutrientPercent.substring(0,nutrientPercent.length-1)

  //   const nutrientConsumed = nutrients[0].querySelector(".nutrient-consumed").innerHTML
  //   const nutrientObjective = nutrients[0].querySelector(".nutrient-objective").innerHTML
  //   const nutrientUnit = nutrients[0].querySelector('.nutrient-unit').innerHTML

  //   const nutrientConsumedDiv = document.querySelector('.nutrient-eaten')
  //   const nutrientObjectiveDiv = document.querySelector('.nutrient-obj')


  //   nutrientConsumedDiv.innerHTML = nutrientConsumed.concat(nutrientUnit)
  //   nutrientObjectiveDiv.innerHTML = nutrientObjective.concat(nutrientUnit)

  //   const trackerDiv = document.querySelector('.circle-tracker-chart')
  //   trackerDiv.innerHTML = '<canvas id="circle-tracker-animation" style="height: 230px">'

  //   var ctx = document.getElementById("circle-tracker-animation");
  //   chart(nutrientPercentWithoutSign, ctx);

  // nutrients.forEach((nutrient) => nutrient.addEventListener("click", event => {

  //   event.preventDefault();

  //   const nutrientsTitle = document.querySelectorAll(".tracker-nutrient-name")
  //   nutrientsTitle.forEach((nutrientTitle) => {
  //     nutrientTitle.classList.remove("selected");
  //   });

  //   const nutrientTitle = nutrient.querySelector(".tracker-nutrient-name").innerHTML

  //   nutrient.querySelector(".tracker-nutrient-name").classList.add("selected");

  //   const circleTrackerName = document.querySelector(".circle-tracker-title-nutrient")
  //   circleTrackerName.innerHTML = nutrientTitle

  //   const nutrientPercent = nutrient.querySelector(".progress-bar-label").innerHTML
  //   const nutrientPercentWithoutSign = nutrientPercent.substring(0,nutrientPercent.length-1)

  //   const nutrientConsumed = nutrient.querySelector(".nutrient-consumed").innerHTML
  //   const nutrientObjective = nutrient.querySelector(".nutrient-objective").innerHTML
  //   const nutrientUnit = nutrient.querySelector('.nutrient-unit').innerHTML

  //   const nutrientConsumedDiv = document.querySelector('.nutrient-eaten')
  //   const nutrientObjectiveDiv = document.querySelector('.nutrient-obj')


  //   nutrientConsumedDiv.innerHTML = nutrientConsumed.concat(nutrientUnit)
  //   nutrientObjectiveDiv.innerHTML = nutrientObjective.concat(nutrientUnit)


  //   const trackerDiv = document.querySelector('.circle-tracker-chart')
  //   trackerDiv.innerHTML = '<canvas id="circle-tracker-animation" style="height: 230px">'

  //   var ctx = document.getElementById("circle-tracker-animation");
  //   chart(nutrientPercentWithoutSign, ctx);

  // }))


  // New code

  const firstSelectedNutrient = nutrientsName[0].querySelector(".tracker-nutrient-name").classList.add("selected");






  const createChart(nutrient) =  (event) => {

    event.preventDefault();
    let selectedNutrientName = nutrient.querySelector('.nutrient-name').innerHTML

    let selectedNutrientWeek = document.getElementById("week-".concat(selectedNutrientName));

    let nutrientDay0 = selectedNutrientWeek.querySelector('.day_0').innerHTML;
    let nutrientDay1 = selectedNutrientWeek.querySelector('.day_1').innerHTML;
    let nutrientDay2 = selectedNutrientWeek.querySelector('.day_2').innerHTML;
    let nutrientDay3 = selectedNutrientWeek.querySelector('.day_3').innerHTML;
    let nutrientDay4 = selectedNutrientWeek.querySelector('.day_4').innerHTML;
    let nutrientDay5 = selectedNutrientWeek.querySelector('.day_5').innerHTML;
    let nutrientDay6 = selectedNutrientWeek.querySelector('.day_6').innerHTML;

    if (nutrientDay0 > 100) nutrientDay0 = 100.01;
    if (nutrientDay1 > 100) nutrientDay1 = 100.01;
    if (nutrientDay2 > 100) nutrientDay2 = 100.01;
    if (nutrientDay3 > 100) nutrientDay3 = 100.01;
    if (nutrientDay4 > 100) nutrientDay4 = 100.01;
    if (nutrientDay5 > 100) nutrientDay5 = 100.01;
    if (nutrientDay6 > 100) nutrientDay6 = 100.01;

    let dataNutrients = [nutrientDay6, nutrientDay5, nutrientDay4, nutrientDay3, nutrientDay2, nutrientDay1, nutrientDay0];

    let day1 = document.querySelector('.day_1_date').innerHTML;
    let day2 = document.querySelector('.day_2_date').innerHTML;
    let day3 = document.querySelector('.day_3_date').innerHTML;
    let day4 = document.querySelector('.day_4_date').innerHTML;
    let day5 = document.querySelector('.day_5_date').innerHTML;
    let day6 = document.querySelector('.day_6_date').innerHTML;

    let dataDates = [day6, day5, day4, day3, day2, day1, "TODAY"];

    // Set colors based on value of bar
    let dataColors = [];
    let i = 0;
    dataNutrients.forEach((nutrient) => {
      if (nutrient > 100) {
        dataColors[i] = '#F2994A';
      } else {
        dataColors[i] = '#27AE60';
      }
      i = i +1;
    });



    const trackerDiv = document.querySelector('.week-graph-card');
    trackerDiv.innerHTML = '<canvas id="week-graph" style="height: 40vh">'

    let barChartPosition = document.getElementById('week-graph');

    let viewChart = barChart(dataNutrients, dataDates, dataColors, barChartPosition);

  };

  document.addEventListener('DOMContentLoaded',createChart);

  nutrientsName.forEach((nutrient) => nutrient.addEventListener('click', createChart));


};

export { weekTracker };

function barChart(dataNutrients, dataDates, dataColors, ctx ) {
  let weekBarGraph = new Chart(ctx, {
    type: 'bar',
    data: {
      labels: dataDates,
      datasets: [{
        borderWidth: 2,
        borderColor: dataColors,
        backgroundColor: dataColors,
        data: dataNutrients
      }],
    },
    options: {
      barPercentage: 0.5,
      legend: {
        display: false
      },
      scales: {
        xAxes: [{
            gridLines: {
                display: false
            },
            barPercentage: 0.6
        }],
        yAxes: [{
            ticks: {
                max: 101,
                display: false
            },
            gridLines: {
                display: false,
                drawBorder: false
            }
        }]
      }
    }
  });
};
