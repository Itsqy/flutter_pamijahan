import 'package:flutter/material.dart';
import 'package:flutter_application_12/models/news.dart';
import 'package:flutter_application_12/services/news_service.dart';

class BeritaProvider extends ChangeNotifier {
  List<BeritaModel>? _listBerita;

  
  List<BeritaModel> get beritaModel => _listBerita!;

  set beritaModel(List<BeritaModel> listBerita) {
    _listBerita = listBerita;
    notifyListeners();
  }

  Future<List<BeritaModel>> getAllBerita() async {
    var data = await BeritaService().getAllBerita();
    _listBerita = data;
    return _listBerita!;
  }
}
