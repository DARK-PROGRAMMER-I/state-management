import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String title = 'Tap on Screen';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('$title'),
        ),
        body: GestureDetector(
          onTap: ((){
            setState(() {
              title = DateTime.now().toIso8601String();
            });
          }),
          child: Container(
            color: Colors.blueGrey,
          ),
        ),
      ),
    );
  }
}
