void main(List<String> args) {
  String nama = 'Rafi Abadi';
  Perkenalan(nama);

  int sisi = 30;
  int volume = VolumeKubus(sisi);
  print(volume);
  print('nilai phi : ${NilaiPhi()}');
}

void Perkenalan(String nama) => print('Perkenalkan nama saya adalah $nama');

int VolumeKubus(int sisi) => sisi *= sisi;

double NilaiPhi() => 3.14;
