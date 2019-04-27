var ctx = document.getElementById("gMiembros").getContext('2d');
var myChart = new Chart(ctx, {
    type: 'doughnut',
    data: {
      labels: [ "miembros activos", "miembros inactivos"],
      datasets: [{
        label: "Miembros",
        backgroundColor: ["#c45850","#F3E72D"],
        data: [80,5]
      }]
    },
    options: {
      title: {
        display: true,
        text: 'Grafica'
      }
    }
});