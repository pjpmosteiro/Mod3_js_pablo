//ej1
/*
function upper_case(str) {
  regexp = /^[a-z]/;
  if (regexp.test(str)) {
    console.log("String's first character is uppercase");
  } else {
    console.log("String's first character is not uppercase");
  }
}
upper_case("Abcd");
upper_case("abcd");

//factorial

function factorial(numero) {
  console.log(numero);
  if (numero == 1) {
    return 1;
  } else {
    return numero * factorial(numero - 1);
  }
}

var total = factorial(5);
console.log(5);
//5*4*3*3*2*1
//0! = 1;

//ej 3
var range = function(start_num, end_num) {
  if (end_num - start_num === 2) {
    return [start_num + 1];
  } else {
    var list = range(start_num, end_num - 1);
    list.push(end_num - 1);
    return list;
  }
};

console.log(range(2, 9));
*/

//ejercicio array
//Operaciones esperadas: (4+2+3)-(10+2-1)
let n = 3;

let arr = Array(n);

arr[0] = "4 6 -1".split(" ").map(arrTemp => parseInt(arrTemp, 10));
arr[1] = "7 2 4".split(" ").map(arrTemp => parseInt(arrTemp, 10));
arr[2] = "10 4 3".split(" ").map(arrTemp => parseInt(arrTemp, 10));

const result = diagonalDifference(arr);
console.log(result);

function diagonalDifference(arr) {
  var total = 0;
  var diagonal1 = 0;
  var diagonal2 = 0;

  //recorrer array n(array de filas)
  for (let fila = 0; fila < arr.length; fila++) {
    const todalafila = arr[fila];gi
    //para cada fila hay que recorrer el array de columnas....
    for (let columna = 0; columna < todalafila.length; columna++) {
      var valor = todalafila(columna);
      //Si indice de la columna = indice de la fila
      if (fila == columna) {
        //lo sumamos a diagonal1
        diagonal1 = diagonal1 + valor;
        console.log("Diagonal1=" + diagonal1);
      }
      //Si indice de la columna * indice de la fila = length1
      if (fila + columna == arr.lenght - 1) {
        diagonal2 = diagonal2 + valor;
        console.log("Diagonal2" + diagonal2);
      }
    }
  }
  // Si el indice de la columna es igual al indice de la fila, lo sumamos a diagonal1

  return 3;
}
