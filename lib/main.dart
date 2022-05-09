import 'package:flutter/material.dart';

const _PATH = "assets/images";
const _PIC01 = "$_PATH/sunset.jpg";
const _PIC02 = "$_PATH/dog1.jpg";
const _PIC03 = "$_PATH/dog2.jpg";
const _PIC04 = "$_PATH/fox.jpg";
const _PIC05 = "$_PATH/spring.jpg";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Altro...
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prova'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //Immagine 1
            Container(
              constraints: BoxConstraints.expand(height: 300),
              alignment: Alignment.center,
              child: Image.asset(
                "assets/images/dog2.jpg",
                fit: BoxFit.cover,
              ),
            ),
            //Immagine 2
            Container(
              constraints: BoxConstraints.expand(height: 300),
              alignment: Alignment.center,
              child: Image(
                image: AssetImage(_PIC05),
                fit: BoxFit.cover,
              ),
            ),
            //Immagine 3
            Container(
              color: Colors.blueGrey,
              child: Image.asset(
                _PIC01,
                height: 200,
                width: 200,
              ),
            ),
            //Immagine 4
            Container(
              color: Colors.blueGrey,
              child: Image.asset(
                _PIC01,
                fit: BoxFit.fill,
                height: 150,
                width: 150,
              ),
            ),
            //Immagine 5
            Container(
              color: Colors.blueGrey,
              child: Image.asset(
                _PIC01,
                fit: BoxFit.fitWidth,
                height: 150,
                width: 150,
              ),
            ),
            Container(
              color: Colors.blueGrey,
              child: Image.asset(
                _PIC01,
                fit: BoxFit.fitHeight,
                height: 150,
                width: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
