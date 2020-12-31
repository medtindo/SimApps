import 'package:flutter/material.dart';
import 'package:simrs/pages/halaman.dart';
import 'package:simrs/pages/splash.dart';
import 'package:simrs/pages/login.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

final routes = <String, WidgetBuilder>{
    '/login': (BuildContext context) => new LoginPage(),
    '/page': (BuildContext context) => new Halaman(),
  };


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  statusBarColor: Colors.blue, //or set color with: Color(0xFF0000FF)
));
    return MaterialApp(
      title: 'Sistem Manajemen Rumah Sakit',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      routes: routes,
      home: Splash()//LoginPage()
    );
  }
}
