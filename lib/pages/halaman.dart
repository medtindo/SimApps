import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:simrs/pages/pendaftaran.dart';

class Halaman extends StatefulWidget {
  @override
  _HalamanState createState() => _HalamanState();
}

class _HalamanState extends State<Halaman> {
  int _index = 0;

  @override
  void initState() {
    super.initState();
    _index = 0;
  }

  void _incrementTab(i) {
    setState(() {
      _index = i;
    });
  }

  List<String> imgList = [
    'assets/slider/1.jpg',
    'assets/slider/2.jpg',
    'assets/slider/3.jpg',
  ];

  Widget _home() {
    return SafeArea(
        child: Container(
      child: CarouselSlider(
        height: 200.0,
        aspectRatio: 2.0,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 5),
        autoPlayAnimationDuration: Duration(milliseconds: 2000),
        pauseAutoPlayOnTouch: Duration(seconds: 10),
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
        items: imgList.map((url) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                margin: EdgeInsets.all(5.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  child: new Image.asset(
                    url,
                    fit: BoxFit.cover,
                    width: 1000.0,
                  ),
                ),
              );
            },
          );
        }).toList(),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    final tabPage = <Widget>[
      _home(),
      Pendaftaran(),
      SafeArea(child: Text("data3")),
      SafeArea(child: Text("data4")),
    ];

    final bottomNavBar = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Padding(
          padding: const EdgeInsets.only(bottom: 7, top: 5),
          child: Icon(FontAwesomeIcons.home),
        ),
        label: "Beranda",
        activeIcon: Padding(
          padding: const EdgeInsets.only(bottom: 7, top: 5),
          child: Icon(FontAwesomeIcons.home),
        ),
      ),
      BottomNavigationBarItem(
        icon: Padding(
          padding: const EdgeInsets.only(bottom: 7, top: 5),
          child: Icon(FontAwesomeIcons.userAlt),
        ),
        label: "Pendaftaran",
        activeIcon: Padding(
          padding: const EdgeInsets.only(bottom: 7, top: 5),
          child: Icon(FontAwesomeIcons.userAlt),
        ),
      ),
      BottomNavigationBarItem(
        icon: Padding(
          padding: const EdgeInsets.only(bottom: 7, top: 5),
          child: Icon(FontAwesomeIcons.phoneAlt),
        ),
        label: "Kontak",
        activeIcon: Padding(
          padding: const EdgeInsets.only(bottom: 7, top: 5),
          child: Icon(FontAwesomeIcons.phoneAlt),
        ),
      ),
    ];

    return new Scaffold(
      body: tabPage[_index],
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 246, 246, 246),
        currentIndex: _index > 2 ? 0 : _index,
        type: BottomNavigationBarType.fixed,
        //unselectedItemColor: Colors.black54,
        selectedItemColor: Colors.blue,
        iconSize: 18,
        unselectedFontSize: 12,
        selectedFontSize: 14,
        items: bottomNavBar,
        onTap: (index) {
          _incrementTab(index);
        },
      ),
    );
  }
}
