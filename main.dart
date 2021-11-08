import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<MyHomePage> {
  bool ischecked = false;
  bool ischecked1 = false;
  bool ischecked2 = false;
  bool ischecked3 = false;
  bool ischecked4 = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mailboxes'),
        ),
        body: Container(
            padding: new EdgeInsets.all(22.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Mailboxes',
                  style: TextStyle(fontSize: 20.0),
                ),
                CheckboxListTile(
                  secondary: const Icon(Icons.tablet_android),
                  title: const Text('All inboxes'),
                  value: ischecked,
                  onChanged: (value) {
                    setState(() {
                      ischecked = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.trailing,
                  secondary: const Icon(Icons.tablet_android),
                  title: const Text('Icloud'),
                  value: ischecked1,
                  onChanged: (value) {
                    setState(() {
                      ischecked1 = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.trailing,
                  secondary: const Icon(Icons.tablet_android),
                  title: const Text('Gmail'),
                  value: ischecked2,
                  onChanged: (value) {
                    setState(() {
                      ischecked2 = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.trailing,
                  secondary: const Icon(Icons.tablet_android),
                  title: const Text('Hotmail'),
                  value: ischecked3,
                  onChanged: (value) {
                    setState(() {
                      ischecked3 = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.trailing,
                  secondary: const Icon(Icons.tablet_android),
                  title: const Text('VIP'),
                  value: ischecked4,
                  onChanged: (value) {
                    setState(() {
                      ischecked4 = value!;
                    });
                  },
                ),
              ],
            )),
      ),
    );
  }
}
