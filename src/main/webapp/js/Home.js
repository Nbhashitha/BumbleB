google.charts.load('current',{packages:['corechart']});
google.charts.setOnLoadCallback(drawChart);

google.charts.load('current',{packages:['corechart']});
google.charts.setOnLoadCallback(pie);

function drawChart() {
// Set Data
const data = google.visualization.arrayToDataTable([
  ['Number of Sells', 'Months'],
  [50,7],[60,8],[70,8],[80,9],[90,9],
  [100,9],[110,10],[120,11],
  [130,14],[140,14],[150,15]
]);
// Set Options
const options = {
  title: 'Monthly Sells',
  hAxis: {title: 'Months'},
  vAxis: {title: 'Number of Sells'},
  legend: 'none'
};
// Draw
const chart = new google.visualization.LineChart(document.getElementById('myChart'));
chart.draw(data, options);
}

//Pie chart
function pie() {
const data = google.visualization.arrayToDataTable([
  ['item', 'count'],
  ['Keyboard',54.8],
  ['Mouse',48.6],
  ['Monitors',44.4]
]);

const options = {
  title:'Most Selling Items',
  is3D:true
};

const chart = new google.visualization.PieChart(document.getElementById('pieChart'));
  chart.draw(data, options);
}