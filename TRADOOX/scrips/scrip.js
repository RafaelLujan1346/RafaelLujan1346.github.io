const ctx = document.getElementById('chartIngresos');

  new Chart(ctx, {
    type: 'line',
    data: {
      labels: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio',
        'Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre'],
      datasets: [{
        label: 'Ganancias por mes',
        data: [14200, 41159, 32333, 11255, 23342, 41153,67836,25537,94668,64889,63974,89927],
        borderWidth: 1
      }]
    },
    options: {
      scales: {
        y: {
          beginAtZero: true
        }
      }
    }
  });
  const ctx2 = document.getElementById('chartCategorias');

  new Chart(ctx2, {
    type: 'pie',
    data: {
      labels: ['Ventas', 'productos', 'usuarios', 'deudas'],
      datasets: [{
        label: 'Datos generales',
        data: [834420, 3443507, 425360, 1546435],
        borderWidth: 1
      }]
    },
    options: {
      scales: {
        y: {
          beginAtZero: true
        }
      }
    }
  });