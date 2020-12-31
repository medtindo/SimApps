import 'dart:convert';

class RequestSimpan {
  String tgltrans;
  String idpasien;
  String idl;
  String kategoripx;
  String entryby;
  String telpon;
  String iddokter;
  String nmdokter;

  RequestSimpan(
      {this.tgltrans,
      this.idpasien,
      this.idl,
      this.kategoripx,
      this.entryby,
      this.telpon,
      this.iddokter,
      this.nmdokter});

  factory RequestSimpan.fromJson(Map<String, dynamic> map) {
    return RequestSimpan(
      tgltrans: map['TGLTRANS'],
      idpasien: map['IDPASIEN'],
      idl: map['IDL'],
      kategoripx: map['KATEGORI_PX'],
      entryby: map['ENTRYBY'],
      telpon: map['TELPON'],
      iddokter: map['IDDOKTER'],
      nmdokter: map['NMDOKTER'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "TGLTRANS": tgltrans,
      "IDPASIEN": idpasien,
      "IDL": idl,
      "KATEGORI_PX": kategoripx,
      "ENTRYBY": entryby,
      "TELPON": telpon,
      "IDDOKTER": iddokter,
      "NMDOKTER": nmdokter
    };
  }
}

List<RequestSimpan> requestsimpanFromJson(String jsonData) {
  final data = json.decode(jsonData);
  return List<RequestSimpan>.from(
      data.map((item) => RequestSimpan.fromJson(item)));
}

String requestsimpanToJson(RequestSimpan data) {
  final jsonData = data.toJson();
  return json.encode(jsonData);
}

class ResponseSimpan {
  String message;
  String type;
  Data data;

  ResponseSimpan({this.message, this.type, this.data});

  factory ResponseSimpan.fromJson(Map<String, dynamic> map) {
    return ResponseSimpan(
      message: map['message'],
      type: map['type'],
      data: Data.fromJson(map['data']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "message": message,
      "type": type,
      "data": data,
    };
  }
}

List<RequestSimpan> responsesimpanFromJson(String jsonData) {
  final data = json.decode(jsonData);
  return List<RequestSimpan>.from(
      data.map((item) => RequestSimpan.fromJson(item)));
}

String responsesimpanTojson(RequestSimpan data) {
  final jsonData = data.toJson();
  return json.encode(jsonData);
}

class Data {
  String tgltrans;
  String idpasien;
  String nama;
  String idl;
  String poli;
  String nomorbooking;
  String nomorantrian;
  String telpon;
  String kategoripx;
  String iddokter;
  String nmdokter;
  String entryby;

  Data(
      {this.tgltrans,
      this.idpasien,
      this.nama,
      this.idl,
      this.poli,
      this.nomorbooking,
      this.nomorantrian,
      this.telpon,
      this.kategoripx,
      this.iddokter,
      this.nmdokter,
      this.entryby});

  factory Data.fromJson(Map<String, dynamic> map) {
    return Data(
        tgltrans: map['TGLTRANS'],
        idpasien: map['IDPASIEN'],
        nama: map['NAMA'],
        idl: map['IDL'],
        poli: map['POLI'],
        nomorbooking: map['NomorBooking'],
        nomorantrian: map['NomorAntrian'],
        telpon: map['Telpon'],
        kategoripx: map['KATEGORI_PX'],
        iddokter: map['IDDOKTER'],
        nmdokter: map['NMDOKTER'],
        entryby: map['ENTRYBY']);
  }

  Map<String, dynamic> toJson() {
    return {
      'TGLTRANS': tgltrans,
      'IDPASIEN': idpasien,
      'NAMA': nama,
      'IDL': idl,
      'POLI': poli,
      'NomorBooking': nomorbooking,
      'NomorAntrian': nomorantrian,
      'Telpon': telpon,
      'KATEGORI_PX': kategoripx,
      'IDDOKTER': iddokter,
      'NMDOKTER': nmdokter,
      'ENTRYBY': entryby
    };
  }
}
