class UrlApiRsgh {
  String baseUrl = "http://36.92.125.207:8081/";

  Map headerToken() {
    return {'username': 'RIZKI', 'password': '2345'};
  }

  String login(String norm, String tgllahir) {
    return '$baseUrl/SIMRS-API/Antrian/login?norm=$norm&tgllahir=$tgllahir';
  }

  String token() {
    return '$baseUrl/Simrs-Api/Token';
  }

  String banner() {
    return '$baseUrl/SIMRS-API/Antrian/banner';
  }

  String jadwaldokter() {
    return '$baseUrl/SIMRS-API/Antrian/DokterPoli/jadwal';
  }

  String jadwaldokterbynama(String nama) {
    return '$baseUrl/SIMRS-API/Antrian/DokterPoli?nama=$nama';
  }

  String jadwaldokterbyidloket(String idl) {
    return '$baseUrl/SIMRS-API/Antrian/DokterPoli/V2/$idl';
  }

  String listdokterbyidloket(String idl) {
    return '$baseUrl/SIMRS-API/Antrian/dokterpoli/loket/$idl';
  }

  String listloket() {
    return '$baseUrl/SIMRS-API/Antrian/datapoli';
  }

  String sisaantrean() {
    return '$baseUrl/SIMRS-API/Antrian/sisaantrian';
  }

  String kategoripasien() {
    return '$baseUrl/SIMRS-API/Antrian/kategoripasien';
  }
}
