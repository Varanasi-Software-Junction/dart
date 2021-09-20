import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  

  @override
  _MyAppState createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
 
  
String title="Varanasi Software Junction";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      title: 'Varanasi Software Junction',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title:  Card(child: Text('$title')),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              
              alignment: Alignment.center,
              padding: const EdgeInsets.all(8.0),
              child: Card(child: Text("Hello"),shadowColor: Colors.blue,elevation:10.5,
            ),)
          ],
        ),
      ),
    );
  }
}

