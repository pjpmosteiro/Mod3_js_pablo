// crear clase polígono con un constructor al que se le pase el nombre del polígono y un metodo getArea.
// cuatro clases que se extiendan desde polígono triangulo rectangulo cuadrado y circulo

class Poligono {
  constructor(nombre, numlados) {
    this.nombre = nombre;
    this.numlados = numlados;
  }
  getArea() {}
}

class Triangulo extends Poligono {
  constructor(base, altura) {
    super("triangulo", 3);
    this.base = base;
    this.altura = altura;
  }

  getArea() {
    return this.base * this.altura;
  }
}

class Rectangulo extends Poligono {
  constructor(base, altura) {
    super("rectangulo", 4);
    this.base = base;
    this.altura = altura;
  }
  getArea() {
    return this.base * this.altura;
  }
}

class Cuadrado extends Rectangulo {
  constructor(lado) {
    super(lado, lado);
    this.nombre = "cuadrado";
  }
}

class Circulo extends Poligono {
  constructor(radio) {
    super("circulo", Infinity);
    this.radio = radio;
  }
  getArea() {
    return 2 * Math.PI * (this.radio * this.radio);
  }
}

const triangulo1 = new Triangulo(50, 21);
console.log(triangulo1);
console.log(triangulo1.getArea());

const rectangulo1 = new Rectangulo(21, 24);
console.log(rectangulo1);
console.log(rectangulo1.getArea());

const cuadrado1 = new Cuadrado(25);
console.log(cuadrado1);
console.log(cuadrado1.getArea());

const circulo1 = new Circulo(25);
console.log(circulo1);
console.log(circulo1.getArea());

/*
const triangulo = new Poligono("triángulo", 3);
console.log(triangulo.nombre);

const cuadrado = new Poligono("cuadrado", 4);
console.log(triangulo.nombre);

const triangulo = new Poligono("triángulo", 3);
console.log(triangulo.nombre);

const triangulo = new Poligono("triángulo", 3);
console.log(triangulo.nombre);
*/
