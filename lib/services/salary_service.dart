import 'dart:convert';

import 'package:flutter_application_12/models/salary_model.dart';
import 'package:http/http.dart' as http;

class SalaryService {
  String baseUrl = 'https://bootcamp.jagoantech.com/api/penggajian';

  Future<SalaryModel> getPenggajian() async {
    Uri url = Uri.parse('$baseUrl/6');
    var headers = {'Content-Type': 'application/json'};
    var response = await http.get(url, headers: headers);
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      var result = data['karyawan'];

      return SalaryModel.fromjson(result);
    } else {
      throw Exception('gagal memuat data penggajian');
    }
  }
}
