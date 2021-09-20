import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  String title = "Varanasi Software Junction";
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
            title: Card(child: Text('$title')),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Card(
                    shadowColor: Colors.red,
                    elevation: 100,
                    child: InkWell(
                      splashColor: Colors.green,
                      onTap: () {
                        print('Clicked');
                      },
                      child: const SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: Text(
                          'Tap Me',
                          textAlign: TextAlign.center,
                          style: TextStyle(),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 2000,
                      child: Container(
                          decoration: BoxDecoration(
                            border:Border.symmetric(),
                               color: Colors.pink),
                          child: Text("Hello")),
                    ),
                    Expanded(
                      flex: 2000,
                      child: Container(
                          decoration: BoxDecoration(color: Colors.orange),
                          child: Text("Hello")),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
