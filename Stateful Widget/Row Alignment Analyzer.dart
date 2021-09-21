import 'package:flutter/material.dart';

void main() {
  runApp(VsjApp());
}

class VsjApp extends StatefulWidget {
  @override
  _VsjAppState createState() {
    return _VsjAppState();
  }
}

class _VsjAppState extends State<VsjApp> {
  int mainaxisno = 0, crossxisno = 0;

  List<MainAxisAlignment> malignlist = [];
  List<CrossAxisAlignment> crossalignlist = [];
  int mainaxismax = 0, crossxismax = 0;

  _VsjAppState() {
    malignlist = MainAxisAlignment.values;
    crossalignlist = CrossAxisAlignment.values;
    mainaxismax = malignlist.length;
    crossxismax = crossalignlist.length;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("VSJ Row Analyzer"),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Container(
                width: double.infinity,
                height: 50,
                color: Colors.teal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          child: Text(malignlist[mainaxisno].toString()),
                          onPressed: () {
                            mainaxisno = (mainaxisno + 1) % mainaxismax;

                            setState(() {});
                            print("Main Axis Aligment");
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        child: Text(crossalignlist[crossxisno].toString()),
                        onPressed: () {
                          try {
                            crossxisno = (crossxisno + 1) % crossxismax;
                            if(crossalignlist[crossxisno]==CrossAxisAlignment.baseline)
                            {
                               crossxisno = (crossxisno + 1) % crossxismax;
                            }
                          } catch (ex) {
                            print(ex);
                          }
                          setState(() {});
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      width: double.infinity,
                      color: Colors.tealAccent,
                      child: Row(
                        crossAxisAlignment: crossalignlist[crossxisno],
                        mainAxisAlignment: malignlist[mainaxisno],
                        children: [
                          ElevatedButton(
                              onPressed: () {}, child: const Text("One")),
                          ElevatedButton(
                              onPressed: () {}, child: const Text("Two")),
                          ElevatedButton(
                              onPressed: () {}, child: const Text("Three")),
                        ],
                      )),
                ),
              ),
            ],
          ),
        ));
  }
}
