import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //Altro...
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);
  Widget _rowMainAlign(mainAxisAlignmentPassato) => Container(
        color: Colors.orange[100],
        child: Row(
          mainAxisAlignment: mainAxisAlignmentPassato,
          children: <Widget>[
            Text(
              "Testo1",
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
            Text(
              "Testo2",
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
            Text(
              "Testo3",
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
            Text(
              "Testo4",
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
          ],
        ),
        height: 30,
        margin: EdgeInsets.all(5),
      );
  Widget _columnMainAlign(crossAxisAlignmentPassato) => Container(
        color: Colors.green[100],
        child: Column(
          crossAxisAlignment: crossAxisAlignmentPassato,
          children: <Widget>[
            Text(
              "Testo1",
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
            Text(
              "Testo2",
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
            Text(
              "Testo3",
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
            Text(
              "Testo4",
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
          ],
        ),
        height: 100,
        width: 200,
        margin: EdgeInsets.all(5),
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prova'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text(
              "Allineamento con Row",
              textAlign: TextAlign.justify,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text("Riga con MainAxisAlignment.start"),
                      _rowMainAlign(MainAxisAlignment.start),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text("Riga con MainAxisAlignment.center"),
                      _rowMainAlign(MainAxisAlignment.center),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text("Riga con MainAxisAlignment.end"),
                      _rowMainAlign(MainAxisAlignment.end),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text("Riga con MainAxisAlignment.spaceBetween"),
                      _rowMainAlign(MainAxisAlignment.spaceBetween),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text("Riga con MainAxisAlignment.spaceEvenly"),
                      _rowMainAlign(MainAxisAlignment.spaceEvenly),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text("Riga con MainAxisAlignment.spaceAround"),
                      _rowMainAlign(MainAxisAlignment.spaceAround),
                    ],
                  ),
                ],
              ),
            ),
            Text(
              "Allineamento con Column",
              textAlign: TextAlign.justify,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text("Colonna con CrossAxisAlignment.start"),
                      _columnMainAlign(CrossAxisAlignment.start),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text("Colonna con CrossAxisAlignment.center"),
                      _columnMainAlign(CrossAxisAlignment.center),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text("Colonna con CrossAxisAlignment.end"),
                      _columnMainAlign(CrossAxisAlignment.end),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
