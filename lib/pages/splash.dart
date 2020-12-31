import 'package:flutter/material.dart';
import 'dart:async';

import 'package:simrs/class/session.dart';

class Splash extends StatefulWidget {
  Splash({Key key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  String norm;
  String tgllahir;
  //Session user = new Session();

  @override
  void initState() {
    super.initState();
    startTimer();
    //checkLogin();
  }

  Future startTimer() async {
    var durasi = new Duration(seconds: 5);
    return new Timer(durasi, checkLogin);
  }

  void checkLogin() async {
    final x = await Session.getNilai('norm');
    final y = await Session.getNilai('tgllahir');
    if (x != null && x != '' && y != null && y != '') {
      print(x);
      print(y);
      Navigator.of(context).pushReplacementNamed('/page');
    } else {
      print('session kosong');
      Navigator.of(context).pushReplacementNamed('/login');
    }
  }

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
            color: Colors.blue[400]),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[50],
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[logo, judul],
        ),
      ),
    );
  }
}
