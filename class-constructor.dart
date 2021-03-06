class RekeningBank {
  var namaPemilik;
  var namaBank;
  var saldo;

  /// It's a constructor.
  RekeningBank({this.namaBank, this.namaPemilik, this.saldo});

  /// It's a multiple constructor.
  RekeningBank.Dompet({this.namaBank = 'Cash', this.namaPemilik, this.saldo});

  cekSaldo() {
    print('Saldo Anda sekarang adalah Rp. ${saldo}');
  }
}

void main(List<String> args) {
  RekeningBank rekeningBank = new RekeningBank(
    namaBank: 'Bank BRI',
    namaPemilik: 'Andrianto Cahyono Putro',
    saldo: 1000000000000,
  );

  print('Nama Bank : ${rekeningBank.namaBank}');
  print('Nama Pemilik : ${rekeningBank.namaPemilik}');
  rekeningBank.cekSaldo();

  RekeningBank DompetFisik = new RekeningBank.Dompet(
    namaPemilik: 'Geputro',
    saldo: 2000000,
  );

  print(DompetFisik.namaBank);
}
