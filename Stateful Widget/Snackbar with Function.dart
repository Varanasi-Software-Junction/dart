import 'package:flutter/material.dart';

void main() => runApp(const SnackBarDemo());

class SnackBarDemo extends StatelessWidget {
  
  const SnackBarDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Vsj Snackbar'),
        ),
        body: const SnackBarPage(),
      ),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          final snackBar =
              VsjSnackBarProvider.getSnackBar("Show Me", context, 10);

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text('Show SnackBar'),
      ),
    );
  }
}

class VsjSnackBarProvider {
  static SnackBar getSnackBar(
      String message, BuildContext context, int duration) {
    return SnackBar(
      content: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.teal,
          child: Column(
            children: [
              Text(message),
              ElevatedButton(
                child: const Text("Hide"),
                onPressed: () {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                },
              ),
            ],
          )),
      duration: Duration(seconds: duration),
      action: SnackBarAction(
        label: 'Hide',
        onPressed: () {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
        },
      ),
    );
  }
}
