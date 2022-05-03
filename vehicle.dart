import 'package:app_carparing/add_vehicle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

class vehichle extends StatefulWidget {
  const vehichle({Key? key}) : super(key: key);

  @override
  State<vehichle> createState() => _vehichleState();
}

class _vehichleState extends State<vehichle> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: V_Home(),
    );
  }
}

class V_Home extends StatefulWidget {
  const V_Home({Key? key}) : super(key: key);

  @override
  State<V_Home> createState() => _V_HomeState();
}

class _V_HomeState extends State<V_Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.deepPurpleAccent,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const add_vehichle()
                    ),
                  );
                },
                child: Text("Add Vehicle"),
              )),
        ],
      ),
    );
  }
}
