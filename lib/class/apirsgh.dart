import 'dart:convert';
import 'package:http/http.dart' show Client;
import 'package:simrs/class/session.dart';
import 'urlapi_rsgh.dart';

class ApiRsgh {
  var api = new UrlApiRsgh();
  Client hc = new Client();

  Future<bool> generateToken(String norm, String tgllahir) async {
    var response = await hc.post(api.token(), headers: api.headerToken());
    if (response.statusCode == 200) {
      var resJson = json.decode(response.body);
      if (resJson['metadata']['code'] == 200) {
        await Session.setNilai('token', resJson['response']['token']);
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  Future<bool> loginHome(String norm, String tgllahir) async {
    var response = await hc.get(api.login(norm, tgllahir));
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
}
