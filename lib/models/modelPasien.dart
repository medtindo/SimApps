import 'dart:convert';

class ResponsePasien {
  bool success;
  String type;
  Data data;

  ResponsePasien({this.success, this.type, this.data});

  factory ResponsePasien.fromJson(Map<String, dynamic> map) {
    return ResponsePasien(
      success: map['success'],
      type: map['type'],
      data: Data.fromJson(map['data']),
    );
  }

  Map<String, dynamic> toJson() {
    return {"success": success, "type": type, "data": data};
  }

}
  List<ResponsePasien> responsePasienFromJson(String jsonData) {
    final data = json.decode(jsonData);
    return List<ResponsePasien>.from(
        data.map((item) => ResponsePasien.fromJson(item)));
  }

  String responsePasienToJson(ResponsePasien data) {
    final jsonData = data.toJson();
    return json.encode(jsonData);
  }

class Data {
  String id;
  String norm;
  String nama;
  String alamat;
  String jk;
  String jk2;
  String tgllahir;
  String agama;
  String pasangan;
  String nik;
  String nobpjs;

  Data(
      {this.id,
      this.norm,
      this.nama,
      this.alamat,
      this.jk,
      this.jk2,
      this.tgllahir,
      this.agama,
      this.pasangan,
      this.nik,
      this.nobpjs});

  factory Data.fromJson(Map<String, dynamic> map) {
    return Data(
      id: map['IDPASIEN'],
      norm: map['NORM'],
      nama: map['NAMA'],
      alamat: map['ALAMAT'],
      jk: map['KELAMIN'],
      jk2: map['KELAMIN1'],
      tgllahir: map['TGLLAHIR'],
      agama: map['AGAMA'],
      pasangan: map['PASANGAN'],
      nik: map['NIK'],
      nobpjs: map['NOBPJS'],
    );
  }

  // Map<String, dynamic> toJson() {
  //   return {
  //     "TGLTRANS": tgltrans,
  //     "IDPASIEN": idpasien,
  //     "IDL": idl,
  //     "KATEGORI_PX": kategoripx,
  //     "ENTRYBY": entryby,
  //     "TELPON": telpon,
  //     "IDDOKTER": iddokter,
  //     "NMDOKTER": nmdokter
  //   };
  // }
}
