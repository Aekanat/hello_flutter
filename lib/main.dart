
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  AppBar _myAppBar() {
    var f_name = 'Aekanat';
    var l_name = 'Kaewnuch';

    return AppBar(
      title: Text(
        '$f_name $l_name',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 50.0,
            color: Colors.blueGrey),
      ),
    );
  }

  Widget _myBody() {
    int ranInt = Random().nextInt(3);
    List<String> _bandName = [
      'Girl In Red',
      'Summer Salt',
      'Dinosaurs Skin',
    ];
    List<String> _bandPic = [
      'assets/images/girl-in-red.png',
      'assets/images/summer-salt.png',
      'assets/images/dinosaur-skin.png',
    ];
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              _bandPic[ranInt],
              width: 450.0,
              fit: BoxFit.contain,
            ),
            Text(
              _bandName[ranInt],
              style: TextStyle(
              fontSize: 50.0,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 235, 223, 87),
            ),
            ),
          ],
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: _myAppBar(),
        body: _myBody(),
      ),
    );
  }
}
