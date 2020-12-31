import 'dart:convert';
import 'package:http/http.dart' show Client;
import 'package:simrs/models/modPasien.dart';
import 'urlapi.dart';

class ApiPasien {
  UrlApi api = new UrlApi();
  Client hc = Client();

  Future<bool> loginBool(String norm, String tgllahir) async {
    var response = await hc.get(api.getDataPasien(norm, tgllahir));
    if (response.statusCode == 200) {
      var resJson = json.decode(response.body);
      if (resJson['success'] == true) {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  Future<DataPasien> loginPasien(String norm, String tgllahir) async {
    print(api.getDataPasien(norm, tgllahir));
    final response = await hc.get(api.getDataPasien(norm, tgllahir));
    print(response.body);
    if (response.statusCode == 200) {
      var resJson = json.decode(response.body);
      return DataPasien.fromJson(resJson);
    } else {
      return null;
    }
  }
}
