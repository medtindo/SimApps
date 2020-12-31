import 'package:flutter/material.dart';
import 'package:simrs/class/apipasien.dart';
import 'package:simrs/class/session.dart';
import 'package:simrs/models/modPasien.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
//import 'package:simrs/pages/halaman.dart';
import 'package:simrs/pages/splash.dart';
//import 'package:intl/intl.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _ceknorm = false;
  bool _cektgllahir = false;
  TextEditingController _tgllahir = new TextEditingController();
  TextEditingController _norm = new TextEditingController();

  var tglFormat = new MaskTextInputFormatter(
      mask: '####-##-##', filter: {"#": RegExp(r'[0-9]')});

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('assets/logo.png'),
      ),
    );

    final judul = Container(
      padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      child: Center(
        child: Text(
          "Medtindo",
          style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.blue[300]),
        ),
      ),
    );

    final norm = TextFormField(
      controller: _norm,
      keyboardType: TextInputType.number,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Nomor Rekam Medis',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
        errorText: _ceknorm ? "Nomor RM Masih Kosong" : null,
      ),
    );

    final tgllahir = TextFormField(
      controller: _tgllahir,
      keyboardType: TextInputType.datetime,
      inputFormatters: [tglFormat],
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Tanggal Lahir yyyy-mm-dd',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
        errorText: _cektgllahir ? "Tanggal Lahir Masih Kosong" : null,
      ),
      // onTap: () async {
      //   DateTime date;
      //   date = await showDatePicker(
      //     context: context,
      //     initialDate: DateTime.now(),
      //     firstDate: DateTime(1800),
      //     lastDate: DateTime(3000),
      //     builder: (BuildContext context, Widget child) {
      //       return child;
      //       // return Theme(
      //       //   data: ThemeData.light().copyWith(
      //       //       primaryColor: Colors.red, //Head background
      //       //       accentColor: Colors.red //selection color
      //       //       dialogBackgroundColor: Colors.white,//Background color
      //       //       ),
      //       //   child: child,
      //       // );
      //     },
      //   );
      //   final f = new DateFormat("yyyy-MM-dd");
      //   _tgllahir.text = date != null ? f.format(date).toString() : "";
      // },
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: MaterialButton(
        minWidth: 200.0,
        height: 42.0,
        onPressed: () async {
          setState(() {
            _norm.text.isEmpty ? _ceknorm = true : _ceknorm = false;
            _tgllahir.text.isEmpty ? _cektgllahir = true : _cektgllahir = false;
          });
          String norm = _norm.text.toString();
          String tgllahir = _tgllahir.text.toString();
          if (_ceknorm == false && _cektgllahir == false) {
            DataPasien result =
                await ApiPasien().loginPasien(norm.trim(), tgllahir.trim());
            if (result != null) {
              if (result.success == true) {
                print(result.message);

                print(result.list.first.aGAMA);

                await Session.setNilai('norm', norm.trim());
                await Session.setNilai('tgllahir', tgllahir.trim());

                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Splash()));
              } else {
                print("gagal masuk");
                //panggilSnackbar("Gagal Masuk", context);
              }
            } else {
              print(result);
              //throw Exception('Data tidak ditemukan');
            }
          }
        },
        color: Colors.lightBlueAccent,
        child: Text('Log In', style: TextStyle(color: Colors.white)),
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Cara Cek Nomor Rekam Medis Anda',
        style: TextStyle(color: Colors.black38),
      ),
      onPressed: () {},
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            judul,
            SizedBox(height: 48.0),
            norm,
            SizedBox(height: 8.0),
            tgllahir,
            SizedBox(height: 24.0),
            loginButton,
            forgotLabel
          ],
        ),
      ),
    );
  }
}
