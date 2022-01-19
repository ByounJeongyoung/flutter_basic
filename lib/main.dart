import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     title: "Demo",
      theme: ThemeData(
        primarySwatch: Colors.amber
      ),
      home: HelloPage("eee"),
    );
  }
}

class HelloPage extends StatefulWidget {

  final String title;
  HelloPage(this.title); //생성자

  @override
  _HelloPageState createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {

  String _message = "값이 변할까?";
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, color: Colors.white,),
        onPressed: _changeMessage ) ,
      appBar: AppBar(
        title: Text("stateFull"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //세로상에서 가운데 정렬
          children: [
            Text(widget.title, style: TextStyle(fontSize: 20)),
            Text(_message, style: TextStyle(fontSize: 20)),
            Text('$_counter', style: TextStyle(fontSize: 20))
          ],
        ),
      )
    );
  }

  void _changeMessage() {
    setState(() {
      _message = "변한다!!!";
      _counter++;
    });
  }
}

