class Banco {
  constructor(nombre) {
    this.nombre = nombre;
    this.listacuenta2 = [];
    this.listaclientes = [];
    this.listapubli = [];
  }
  lanzarpublicidad() {
    let a = null;
  }
  //CREAR CUENTA
  crearcuenta(cliente) {
    let cuenta = new Cuenta(cliente, this);
    this.listacuentas.push(cuenta);
    cliente.insertarcuenta.push(cuenta);
    // if
    this.listaclientes.push(cliente);
  }
}

class Cliente {
  constructor(nombre) {
    this.nombre = nombre;
  }
  getsaldototal() {
    let b = null;
  }
  insertarcuenta(cuenta) {
    if (this.listacuentas.indexOf(cuenta) === -1) {
      this.listacuentas.push(cuenta);
    }
  }
}

class Cuenta {
  constructor(nombre, banco) {
    this.cliente = nombre;
    this.banco = banco;
    this.saldo = 0;
  }
}

let banco = new Banco("pepebanco");
console.log(banco);

let cliente = new Cliente("pepe");
console.log(cliente);

let cuenta = new Cuenta("pepe", "pepebanco");
console.log(cuenta);
