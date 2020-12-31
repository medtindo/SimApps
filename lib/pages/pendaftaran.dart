import 'package:flutter/material.dart';

class Pendaftaran extends StatefulWidget {
  @override
  _PendaftaranState createState() => _PendaftaranState();
}

class _PendaftaranState extends State<Pendaftaran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Pendaftaran"),
      ),
    );
  }
}
