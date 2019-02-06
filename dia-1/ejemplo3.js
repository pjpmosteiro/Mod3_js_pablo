class Producto {
  constructor(name, price) {
    this.name = name;
    this.price = price;
  }
}

const producto1 = new Producto("Lechuga", 44);
console.log(producto1.name);

//objeto libro, con autor

class Book extends Producto {
  constructor(name, price, author) {
    super(name, price);
    this.author = author;
  }
}

const libro1 = new Book("El tio pepe y tonton", 24, "Tio gilito");
console.log(libro1.name, libro1.price, libro1.author);

//cesta de la compra

class Cesta {
  constructor() {
    this.productos = [];
  }
  addProduct(cantidad, producto) {
    this.productos.push(...Array(cantidad).fill(producto));
  }
  calcTotal() {
    return this.productos
      .map(producto => producto.price)
      .reduce((a, b) => a + b, 0);
  }
  printShoppingInfo() {
    console.log("one has to pay in total: " + this.calcTotal());
  }
}

const pan = new Producto("pan", 1);
const agua = new Producto("agua", 3);
const narnia = new Book("Narnia", 21, "yoquese");
const cesta = new Cesta();
cesta.addProduct(2, pan);
cesta.addProduct(3, agua);
cesta.addProduct(1, narnia);
cesta.printShoppingInfo();
