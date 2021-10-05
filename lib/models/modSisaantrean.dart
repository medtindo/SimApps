class SisaAntrean {
  String success;
  String message;
  List<Data> list;

  SisaAntrean({this.success, this.message, this.list});

  SisaAntrean.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    if (json['list'] != null) {
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
    if (this.list != null) {
      data['list'] = this.list.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String iDL;
  String nAMA;
  String kATEGORI;
  String lOKET;
  String pOLI;
  String jAM;
  String nOMOR;
  int bLMDATANG;
  int jMLTERPANGGIL;
  int sISA;
  int jUMLAH;

  Data(
      {this.iDL,
      this.nAMA,
      this.kATEGORI,
      this.lOKET,
      this.pOLI,
      this.jAM,
      this.nOMOR,
      this.bLMDATANG,
      this.jMLTERPANGGIL,
      this.sISA,
      this.jUMLAH});

  Data.fromJson(Map<String, dynamic> json) {
    iDL = json['IDL'];
    nAMA = json['NAMA'];
    kATEGORI = json['KATEGORI'];
    lOKET = json['LOKET'];
    pOLI = json['POLI'];
    jAM = json['JAM'];
    nOMOR = json['NOMOR'];
    bLMDATANG = json['BLMDATANG'];
    jMLTERPANGGIL = json['JMLTERPANGGIL'];
    sISA = json['SISA'];
    jUMLAH = json['JUMLAH'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['IDL'] = this.iDL;
    data['NAMA'] = this.nAMA;
    data['KATEGORI'] = this.kATEGORI;
    data['LOKET'] = this.lOKET;
    data['POLI'] = this.pOLI;
    data['JAM'] = this.jAM;
    data['NOMOR'] = this.nOMOR;
    data['BLMDATANG'] = this.bLMDATANG;
    data['JMLTERPANGGIL'] = this.jMLTERPANGGIL;
    data['SISA'] = this.sISA;
    data['JUMLAH'] = this.jUMLAH;
    return data;
  }
}
