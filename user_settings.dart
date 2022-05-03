import 'package:app_carparing/user_detail_s.dart';
import 'package:app_carparing/vehicle.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class user_s extends StatefulWidget {
  const user_s({Key? key}) : super(key: key);

  @override
  State<user_s> createState() => _user_sState();
}

class _user_sState extends State<user_s> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: U_Home(),
    );
  }
}

class U_Home extends StatefulWidget {
  const U_Home({Key? key}) : super(key: key);

  @override
  State<U_Home> createState() => _U_HomeState();
}

class _U_HomeState extends State<U_Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text("USER"),
        ),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 35,
          ),
          CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('assets/placeholder.jpg'),
            backgroundColor: Colors.transparent,
          ),
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
                      style: OutlinedButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Colors.deepPurpleAccent,
                      ),
                      child: Text("User Details"),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const user_detail_s()));
                      },
                    ),
                  ),
                ),
                Container(
                  width: 175,
                  height: 175,
                  child: Card(
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Colors.deepPurpleAccent,
                      ),
                      child: Text("Vehicle Details"),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => vehichle()
                            ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
