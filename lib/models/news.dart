class BeritaModel {
  int? id;
  String? judulBerita, isiBerita, tanggalTerbit, penerbit;

  BeritaModel({
    required this.id,
    required this.judulBerita,
    required this.isiBerita,
    required this.tanggalTerbit,
    required this.penerbit,
  });

  factory BeritaModel.fromJson(Map<String, dynamic> json) {
    return BeritaModel(
      id: json['id'],
      judulBerita: json['judul_berita'],
      isiBerita: json['isi_berita'],
      penerbit: json['penerbit'],
      tanggalTerbit: json['tanggal_terbit'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'judul_berita': judulBerita,
      'isi_berita': isiBerita,
      'tanggal_terbit': tanggalTerbit,
      'penerbit': penerbit,
    };
  }
}
