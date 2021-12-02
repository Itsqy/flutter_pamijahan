import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_application_12/models/news.dart';

class BeritaService {
  String baseUrl = 'https://bootcamp.jagoantech.com/api';

  Future<List<BeritaModel>> getAllBerita() async {
    Uri url = Uri.parse('$baseUrl/berita');

    var headers = {'Content-Type': 'application/json'};

    var response = await http.get(url, headers: headers);

    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      var result = data['data'] as List;
      List<BeritaModel> list =
          result.map((json) => BeritaModel.fromJson(json)).toList();

      return list;
    } else {
      throw Exception('gagal login berita');
    }
  }
}
