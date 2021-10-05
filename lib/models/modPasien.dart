class DataPasien {
  bool success;
  String message;
  bool nilai;
  List<Data> list;

  DataPasien({this.success, this.message, this.nilai, this.list});

  DataPasien.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    nilai = json['nilai'];
    if (json['list'] != null) {
      // ignore: deprecated_member_use
      list = <Data>[];
      json['list'].forEach((v) {
        list.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    data['nilai'] = this.nilai;
    if (this.list != null) {
      data['list'] = this.list.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String iDPASIEN;
  String nORM;
  String nAMA;
  String aLAMAT;
  String kELAMIN;
  String tGLLAHIR;
  String aGAMA;
  Null pASANGAN;
  Null nIK;
  Null nOMORBPJS;

  Data(
      {this.iDPASIEN,
      this.nORM,
      this.nAMA,
      this.aLAMAT,
      this.kELAMIN,
      this.tGLLAHIR,
      this.aGAMA,
      this.pASANGAN,
      this.nIK,
      this.nOMORBPJS});

  Data.fromJson(Map<String, dynamic> json) {
    iDPASIEN = json['IDPASIEN'];
    nORM = json['NORM'];
    nAMA = json['NAMA'];
    aLAMAT = json['ALAMAT'];
    kELAMIN = json['KELAMIN'];
    tGLLAHIR = json['TGLLAHIR'];
    aGAMA = json['AGAMA'];
    pASANGAN = json['PASANGAN'];
    nIK = json['NIK'];
    nOMORBPJS = json['NOMOR_BPJS'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['IDPASIEN'] = this.iDPASIEN;
    data['NORM'] = this.nORM;
    data['NAMA'] = this.nAMA;
    data['ALAMAT'] = this.aLAMAT;
    data['KELAMIN'] = this.kELAMIN;
    data['TGLLAHIR'] = this.tGLLAHIR;
    data['AGAMA'] = this.aGAMA;
    data['PASANGAN'] = this.pASANGAN;
    data['NIK'] = this.nIK;
    data['NOMOR_BPJS'] = this.nOMORBPJS;
    return data;
  }
}
