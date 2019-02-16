//Batalla estelar --BIDIMENSIONAL
//LANG=es_ES codif utf-8
//Una clase Nave
//    Propiedades
//        Daño
//        Puntos de vida (Escudo)
//        Nombre o Código
//        Estado (Activo o Destruido) (Solo lectura)
//    Metodos
//        Disparar
//            Selecciona un objetivo
//            Lo llama y le ejecuta recibir un disparo
//        Seleccionar Objetivo
//        Recibir disparo (dano)
//            Se descuenta el daño a los puntos de vida

class Nave {
  constructor(nombre, pdisparo, pvida, dano, estado) {
    this.nombre = nombre;
    this.pdisparo = pdisparo;
    this.pvida = pvida;
    this.dano = dano;
    this.estado = [];
    //estado - funcion get en funcion de vida. If vida = 0,estado = muerto
  }

  disparar(nave) {}
  Obtenerdano(nave) {
    if ((this.pvida = 0)) {
      return "muerto";
    } else {
      return "vivo";
    }
  }
  Recibirdisparo(dano) {
    this.pvida.push(-i);
  }
}

//restar 1 a puntovida del objeto nave
//-//
//Tres clases derivadas de Nave: Nave Clase I, Nave Clase II, Nave Clase III
//Cada una tendrá caracteristicas distintas (10 disparo, 5 vida) (5 disparo, 10 vida) (8 disparo, 7 vida)  (Opcional)

class NaveTipo1 extends Nave {
  constructor(nombre) {
    super(nombre, 10, 5);
  }
}

class NaveTipo2 extends Nave {
  constructor(nombre, pvida, pdisparo) {
    super(nombre, 5, 10);
  }
}

class NaveTipo3 extends Nave {
  constructor(nombre, pvida, pdisparo) {
    super(nombre, 8, 7);
  }
}
//Una clase ejercito
//    Nombre
//    ListaNaves
//    Estado o    Informe de las naves
//    Derrotado (s/N)
//
class Ejercito {
  constructor(nombre, listanaves, estado, derrotado) {
    this.nombre = nombre;
    this.listanaves = [];
    this.estado = estado;
    this.derrotado = derrotado;
  }
  sumanaves(nave) {
    this.listanaves.push(nave);
  }
}
//  Una clase Generador de Naves
//    Metodos
//        CrearEjercito(nombre, cantidad clase I, cantidad clase II, cantidad clase III)
//            El total de
//        Distribuir el ejercito en el campo de batalla
//

class NaveGenerator {
  constructor() {}
  CrearEjercito(nombre, nave1, nave2, nave3) {
    let ejercito = new Ejercito(nombre);
    for (let i = 0; i < nave1; i++) {
      let nave = new NaveTipo1("pepito" + (i + 1));
      ejercito.sumanaves(nave);
    }
    for (let i = 0; i < nave2; i++) {
      let nave = new NaveTipo2("tiopepe" + (i + 1));
      ejercito.sumanaves(nave);
    }
    for (let i = 0; i < nave3; i++) {
      let nave = new NaveTipo3("yoquese" + (i + 1));
      ejercito.sumanaves(nave);
    }
    return ejercito;
  }
}

//Una clase Campo de Batalla
//    Lista de sectores por ejercito (uno para cada ejercito)
//    Control de los turnos (clase principal para el juego)
//    Ejecutar turno(ejercito)
//        Seleecionar una nave que dispara

class CampoBatalla {
  constructor(sectorlist, rolecontrol, roleexec) {
    this.sectorlist = [];
    this.rolecontrol = rolecontrol;
    this.roleexec = roleexec;
  }
}

//Una clase sector:
//    Un array donde se almacenan las naves. Puede ser mismo tamaño que el ejercito (n elementos)
//    o tener más tamaño y quedar huecos (disparo al aire), opcional 2 y tres dimensiones.
//
//    Metodos:
//        ObtenerElementoEnPosicion(posicion) (devuelve una nave o null)
//
class Sector {
  constructor() {}
}

let generador = new NaveGenerator();
let ejercito1 = generador.CrearEjercito("putin", 1, 5, 7);
//console.log(ejercito1.listanaves);
console.log(ejercito1.listanaves.map(nave => nave.nombre));
//OPERATIVA
/*
const ejercito1 = generador.CrearEjercito("Rojo", 3, 5, 7);
const ejercito2 = generador.CrearEjercito("Verde", 3, 5, 7);
//(si son distintos se generan partidas desiguales, asi que habrá que controlar esto al añadir los ejercitos)
const campoBatalla = generador.GenerarCampo(ejercito1, ejercito2);

var resultado = campoBatalla.REalizarPartida();
// Dentro se realizarán los turnos
// Se visualizaran los disparos
// Se indica si una nave ha sido destruida: la nave 1 del ejercito rojo ha sido destruida por la nave 3 del ejercito verde
console.log(resultado);
// El ejercito rojo ha ganado
*/
