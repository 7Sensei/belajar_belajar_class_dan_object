void main(List<String> args) {
  Rekeningbank rekeningbank = new Rekeningbank(
    'Rafi Abadi',
    'BCA',
    200000,
  );

  rekeningbank.cekSaldo();
  rekeningbank.ambilSaldo();
  rekeningbank.transfer();

  print('\nRekening Baru\n');

  Rekeningbank rekeningRafi = new Rekeningbank('Budy', 'ATB', 50000);
  Rekeningbank nana = new Rekeningbank.dana();
  print(rekeningRafi.getnamaPemilik);
  print(rekeningRafi.getnamaBank);
  print(rekeningRafi.getsaldo);
  print('Berubah');
  rekeningRafi.setnamaPemilik = 'Saitama';
  rekeningRafi.namaBank = 'BTB';
  rekeningRafi.setsaldo = 100000;
  print(rekeningRafi.getnamaPemilik);
  print(rekeningRafi.getnamaBank);
  print(rekeningRafi.getsaldo);
  print('');
  print(nana.getnamaPemilik);
  print(nana.getnamaBank);
  print(nana.getsaldo);
}

class Rekeningbank {
  late String namaPemilik;
  late String namaBank;
  late int saldo;

  Rekeningbank(this.namaPemilik, this.namaBank, this.saldo);
  Rekeningbank.dana(
      {this.namaPemilik = 'DANArafi',
      this.namaBank = 'DANA',
      this.saldo = 10000});

  set setnamaPemilik(String namaPemilik) {
    this.namaPemilik = namaPemilik;
  }

  String get getnamaPemilik {
    return this.namaPemilik;
  }

  set setnamaBank(String namabank) {
    this.namaBank = namaBank;
  }

  String get getnamaBank {
    return this.namaBank;
  }

  set setsaldo(int saldo) {
    this.saldo = saldo;
  }

  int get getsaldo {
    return this.saldo;
  }

  cekSaldo() {
    print('Saldo saat ini : ${this.saldo}');
  }

  ambilSaldo() {
    print('ambil Saldo');
  }

  transfer() {
    print('transfer');
  }
}
