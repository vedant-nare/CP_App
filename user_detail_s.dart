import 'package:flutter/material.dart';

class user_detail_s extends StatefulWidget {
  const user_detail_s({Key? key}) : super(key: key);

  @override
  State<user_detail_s> createState() => _user_detail_sState();
}

class _user_detail_sState extends State<user_detail_s> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UD_Home(),
    );
  }
}

class UD_Home extends StatefulWidget {
  const UD_Home({Key? key}) : super(key: key);

  @override
  State<UD_Home> createState() => _UD_HomeState();
}

class _UD_HomeState extends State<UD_Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 35),
              child: buildTextField("Name"),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 35),
              child: buildTextField("Password"),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 35),
              child: buildTextField("Confirm Password"),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 35),
              child: buildTextField("Phone No."),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 35),
              child: buildTextField("Email"),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 35),
              child: buildTextField("Address"),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 35),
              child: buildTextField("Adhaar Number"),
            ),
            
            Container(
            padding: EdgeInsets.symmetric(horizontal: 60),
            child:OutlinedButton.icon(
              icon: Icon(Icons.update),
                label: Text('Update'),
                style: OutlinedButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.deepPurpleAccent,
                  shape: StadiumBorder(),
                ),
                onPressed: () {
                  
                },
            ),
          ),
            
          ],
        ),
      ),
    );
  }

  Widget buildTextField(String placeholder) {
    return TextField(
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: placeholder,
        hintStyle: TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}
