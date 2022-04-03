// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

// ignore: camel_case_types
class settings extends StatefulWidget {
  const settings({Key? key}) : super(key: key);

  @override
  State<settings> createState() => _settingsState();
}

// ignore: camel_case_types
class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: S_Home(),
    );
  }
}

class S_Home extends StatefulWidget {
  const S_Home({Key? key}) : super(key: key);

  @override
  State<S_Home> createState() => _S_HomeState();
}

class _S_HomeState extends State<S_Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Settings",
            style: TextStyle(color: Colors.indigo.shade200),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 25,
          ),
          Center(
            child: Wrap(
              direction: Axis.horizontal,
              children: [
                Container(
                  width: 175,
                  height: 175,
                  child: Card(
                      child: OutlinedButton(
                    onPressed: () {},
                    child: Text("Notifications"),
                  )),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 175,
                  height: 175,
                  child: Card(
                      child: OutlinedButton(
                    onPressed: () {},
                    child: Text("Account"),
                  )),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Center(
            child: Wrap(
              direction: Axis.horizontal,
              children: [
                Container(
                  width: 175,
                  height: 175,
                  child: Card(
                      child: OutlinedButton(
                    onPressed: () {},
                    child: Text("Language"),
                  )),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 175,
                  height: 175,
                  child: Card(
                      child: OutlinedButton(
                    onPressed: () {},
                    child: Text("Terms of Use"),
                  )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
