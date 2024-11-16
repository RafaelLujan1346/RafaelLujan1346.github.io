const ctx = document.getElementById('chartIngresos');

  new Chart(ctx, {
    type: 'line',
    data: {
      labels: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio',
        'Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre'],
      datasets: [{
        label: 'Ganancias por mes',
        data: [1200, 4119, 3233, 1125, 2342, 4113,6786,2237,9468,6489,6374,8927],
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
      labels: ['Desayunos', 'Comidas', 'Cenas', 'Snacks'],
      datasets: [{
        label: 'Dietas por categorias',
        data: [120, 340, 60, 15],
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