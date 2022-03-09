void main(List<String> args) {
  Ewallet ewallet = new Ewallet('Genos', 20000, []);

  print('Nilai Awal');
  print(ewallet.getNamaPemilik);
  print(ewallet.getSaldo);
  print('Request');
  ewallet.request(300000);
  print(ewallet.getSaldo);
  print(ewallet.getMutasi);
  print('Transfer');
  ewallet.transfer(100000);
  print(ewallet.getSaldo);
  print(ewallet.getMutasi);
}

class Ewallet {
  late String namaPemilik;
  late int saldo;
  late List mutasi;

  Ewallet(this.namaPemilik, this.saldo, this.mutasi);

  get getNamaPemilik => this.namaPemilik;

  set setNamaPemilik(namaPemilik) => this.namaPemilik = namaPemilik;

  get getSaldo => this.saldo;

  set setSaldo(saldo) => this.saldo = saldo;

  get getMutasi => this.mutasi;

  set setMutasi(mutasi) => this.mutasi = mutasi;

  transfer(int nominal) {
    this.saldo -= nominal;
    addMutasi('Nominal $nominal');
  }

  addMutasi(String transaksi) {
    this.mutasi.add(transaksi);
  }

  request(int nominal) {
    this.saldo += nominal;
    addMutasi('Request $nominal');
  }
}
