var ctx = document.getElementById("Gconta").getContext('2d');
var myChart = new Chart(ctx, {
    type: 'pie',
    data: {
      labels: [ "Productos en venta", "Merma"],
      datasets: [{
        label: "Resúmen",
        backgroundColor: ["#3AC8BD", "#783AC8"],
        data: [85,15]
      }]
    },
    options: {
      title: {
        display: true,
        text: 'Resumen general de productos 2019'
      }
    }
});

