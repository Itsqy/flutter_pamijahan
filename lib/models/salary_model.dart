import 'package:flutter_application_12/models/gaji_model.dart';

class SalaryModel {
  int? id;
  String? idJabatan, namaKaryawan, status, tanggalMasuk, nomorHp, username;
  List<GajiModel>? gaji;

  SalaryModel({
    required this.id,
    required this.idJabatan,
    required this.status,
    required this.namaKaryawan,
    required this.tanggalMasuk,
    required this.nomorHp,
    required this.username,
    required this.gaji,
  });

  factory SalaryModel.fromjson(Map<String, dynamic> json) {
    return SalaryModel(
      id: json['id'],
      idJabatan: json['id_jabatan'],
      namaKaryawan: json['nama_karyawan'],
      status: json['status'],
      tanggalMasuk: json['tanggal_masuk'],
      nomorHp: json['nomor_hp'],
      username: json['username'],
      gaji: json['gaji'].map<GajiModel>((e) => GajiModel.fromjson(e)).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'id_jabatan': idJabatan,
      'nama_karyawan': namaKaryawan,
      'status': status,
      'nomor_hp': nomorHp,
      'username': username,
      'gaji': gaji!.map((e) => e.toJson()).toList(),
    };
  }
}
