class Profesor {
  constructor(nombre, edad) {
    this.nombre = nombre;
    this._edad = edad;
  }
  soyElProfe() {
    console.log("Soy el profe" + this.nombre);
  }

  get edad() {
    return this._edad;
  }
  get edadMinima() {
    return 12;
  }
  //ajuste de edad
  set edad(value) {
    if (value < this.edadMinima) {
      console.log("majo, espera unos añitos....");
      return;
    }
    this._edad = value;
  }
  static crearProfesorBot() {
    return new this("botmarcos", 95);
  }
}
const profesor1 = new Profesor("pepe", 42);
console.log(profesor1.edad);
profesor1.edad = 20;
