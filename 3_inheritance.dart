void main(List<String> args) {
  print('Mobil');
  Mobil mobil = new Mobil(4);
  mobil.jumlahrRoda(mobil.roda);
  mobil.klakson();
  mobil.berjalan();

  print('Motor');
  Motor motor = new Motor(2);
  motor.jumlahRoda(motor.roda);
  motor.klakson();
  motor.berjalan();
}

abstract class Kendaraan {
  String suaraKlakson = 'Tiiiiiiiiin';

  void klakson() {
    print('klakson : ${this.suaraKlakson}');
  }

  void jumlahrRoda(int roda) {
    print('Jumlah roda : $roda');
  }

  void berjalan() {}
}

class Mobil extends Kendaraan {
  int roda;
  Mobil(this.roda);

  @override
  void jumlahRoda(int roda) {
    print('Jumlah roda : $roda');
    super.jumlahrRoda(roda);
  }

  @override
  void berjalan() {
    print('Mobil berjalan');
  }
}

class Motor extends Kendaraan {
  int roda;
  Motor(this.roda);

  @override
  void jumlahRoda(int roda) {
    print('Jumlah roda : $roda');
    // super.jumlahrRoda(roda);
  }

  @override
  void berjalan() {
    print('Motor berjalan');
  }

  @override
  void klakson() {
    print('klakson : tiutiutiu');
  }
}
