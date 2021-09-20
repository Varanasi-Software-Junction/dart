import 'package:flutter/material.dart';
/*

SetState https://api.flutter.dev/flutter/widgets/State/setState.html
A Satteful Widget is a Flutter UI element that is mutable.

Stateful widgets are used when the UI changes
dynamically.
The logic and internal state for a StatefulWidget.

State is information that (1) can be read synchronously when the widget is built and (2) might change during the lifetime of the widget. It is the responsibility of the widget implementer to ensure that the State is promptly notified when such state changes, using State.setState.

Important links
Stateful Widget
https://api.flutter.dev/flutter/widgets/StatefulWidget-class.html

State https://api.flutter.dev/flutter/widgets/State-class.html

SetState https://api.flutter.dev/flutter/widgets/State/setState.html


*/
void main() {
  runApp(VsjApp());
}

class VsjApp extends StatefulWidget {
  @override
  _MyAppState createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<VsjApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("App Title"),
      ),
      body: const Text("Hello"),
    ));
  }
}
