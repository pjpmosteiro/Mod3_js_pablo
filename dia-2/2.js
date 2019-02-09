class Reflib {
  constructor(transactionid, accountid, qamount) {
    this.transactionid = transactionid;
    this.accountid = accountid;
    this.qamount = qamount;
  }
}

class Account {
  constructor(reflib, name, id) {
    this.reflib = reflib;
    this.name = name;
    this.id = id;
  }
}

class Transaction {
  constructor(sender, receiver, amount, ref) {
    this.sender = sender;
    this.receiver = receiver;
    this.amount = amount;
    this.ref = ref;
  }
}

class BussinessAccount extends Account {
  constructor(name, reflib, saldo) {
    super();
    this.saldo = saldo;
    this.name = name;
    this.reflib = reflib;
  }
}

class PersonalAccount extends Account {
  constructor(name, reflib, saldo) {
    super();
    this.saldo = saldo;
    this.name = name;
    this.reflib = reflib;
  }
}

const bank = new Reflib();
console.log(Reflib);
0u 


////VER SOLUCION