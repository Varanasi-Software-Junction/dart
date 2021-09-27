import 'package:flutter/material.dart';

void main() => runApp(VsjApp());

class VsjApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: VsjDrawer());
  }
}

class VsjDrawer extends StatefulWidget {
  @override
  _VsjAppState createState() {
    return _VsjAppState<VsjDrawer>();
  }
}

class _VsjAppState<VsjDrawer> extends State {
  static const appTitle = 'Vsj Drawer';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(appTitle),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Vsj Drawer App'),
      ),
      drawer: DrawerSupplier(),
    );
  }
}

class DrawerSupplier extends StatefulWidget {
  @override
  State<DrawerSupplier> createState() {
    return _DrawerSupplier();
  }
}

class _DrawerSupplier extends State<DrawerSupplier> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.teal,
            ),
            child: Image.network(
                'https://3.bp.blogspot.com/-py5FbTZgvjo/YDi1bsQq16I/AAAAAAAACB0/BxejbJBcHA4AVfkB33WYC3YlVmxElM7BwCK4BGAYYCw/s1600/Varanasi%2BSoftware%2BJunction%2BPhone%2BLogo.png'),
          ),
          ListTile(
            title: const Text('Item 1'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
