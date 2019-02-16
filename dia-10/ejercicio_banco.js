//Creador de cuentas | Ejercicio 1
class Banco {
  constructor(nombre) {
    this.nombre = nombre;
    this.listacuentas = [];
    this.listaclientes = [];
    this.listapubli = [];
    this.cuentabase = null;
  }
  //Publicidad
  lanzarpublicidad() {
    let a = null;
  }
  //CREAR CUENTA
  crearcuenta(cliente) {
    let cuenta = new Cuenta(cliente, this);
    this.listacuentas.push(cuenta);
    cliente.insertarcuenta.push(cuenta);
    // IF CLIENTE PENDIENTE
    this.listaclientes.push(cliente);
  }
  //Cuenta base
  crearCuentaBase() {}
}

class Cuenta {
  constructor(nombre, banco) {
    this.cliente = nombre;
    this.banco = banco;
    this.saldo = 0;
    this._comision = 0;
  }
  //Insercion de comisiones
  get Comision() {
    return this.Comision;
  }
  set Comision(valor) {
    this._comision = valor;
  }
}

let banco = new Banco("ING");
console.log(banco);

let cliente1 = new Cliente("pepe");
console.log(cliente1);

let cuenta = new Cuenta("pepe", "pepebanco");
console.log(cuenta);

let cuenta1 = banco.crearcuenta(cliente1);
console.log(banco.listacuentas);
