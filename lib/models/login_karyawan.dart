class LoginKaryawanModel {
  int? id;
  String? idJabatan;
  String? namaKaryawan;
  String? status;
  String? tanggalMasuk;
  String? nomorHp;

  LoginKaryawanModel({
    required this.id,
    required this.idJabatan,
    required this.status,
    required this.namaKaryawan,
    required this.tanggalMasuk,
    required this.nomorHp,
  });
  factory LoginKaryawanModel.fromjson(Map<String, dynamic> json) {
    return LoginKaryawanModel(
      id: json['id'],
      idJabatan: json['id_Jabatan'],
      namaKaryawan: json['nama_karyawan'],
      status: json['status'],
      tanggalMasuk: json['tanggal_Masuk'],
      nomorHp: json['nomor_hp'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'idJabatan': idJabatan,
      'nama_karyawan': namaKaryawan,
      'status': status,
      'nomor_hp': nomorHp,
    };
  }
}
