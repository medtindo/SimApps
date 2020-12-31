class UrlApi {

  String baseUrl = 'http://36.92.125.207:8081'; //muslimat
  //String baseUrl = 'http://medtindo.ip-dynamic.com:8081/';
  //String baseUrl = 'http://192.168.88.4:8081/';
  
  Map headerApi(){
    return {
       'Content-type': 'application/json',
       'user': 'RISKI',
       'pass': 'RSK123'
     };
  }

  String simpanBooking(){
    return '$baseUrl/Simrs-Api/Antrian/Booking';
  }

  String getJadwalDokterByPoli(String idl){
    return '$baseUrl/simrs-api/antrian/DokterPoli/V2/$idl';
  }
  
  String getAntrianPoli(){
    return '$baseUrl/simrs-api/antrian/Data';
  }

  String getDataPasien(String norm, String tgllahir){
    return '$baseUrl/simrs-api/info/Login1/$norm/$tgllahir';
  }

  String getDataHistorisPasien(String idpasien){
    return '$baseUrl/Simrs-Api/Antrian/$idpasien/Riwayat';
  }


}