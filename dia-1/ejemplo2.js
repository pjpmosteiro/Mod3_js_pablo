function Profesor(nombre, edad) {
  this.nombre = nombre;
  this.edad = edad;
}

const profesor1 = new Profesor("marcos", 44);
console.log(profesor1.nombre);
profesor1.nombre = "tio pepe";
console.log(profesor1.nombre);
Profesor.prototype.soyElProfe = function() {
  console.log("Soy el profe " + this.nombre);
};

profesor1.soyElProfe();

const profesor2 = new Profesor("Manolo eldelBombo", 35);
console.log(profesor2.nombre);

Profesor.prototype.cumpleanos = function() {
  let edadsum = this.edad + 1;
  console.log(edadsum);
};

profesor2.cumpleanos();
