import 'package:flutter/material.dart';

class add_vehichle extends StatefulWidget {
  const add_vehichle({Key? key}) : super(key: key);

  @override
  State<add_vehichle> createState() => _add_vehichleState();
}

class _add_vehichleState extends State<add_vehichle> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AV_Home(),
    );
  }
}

class AV_Home extends StatefulWidget {
  const AV_Home({Key? key}) : super(key: key);

  @override
  State<AV_Home> createState() => _AV_HomeState();
}

class _AV_HomeState extends State<AV_Home> {
  String dropdownvalue = 'Company';
  String dropdownvalue1 = 'Type';
  String dropdownvalue2 = 'Tyre Count';
  var items = [
    'Company',
    'Suzuki',
    'Kia',
    'TATA',
    'Skoda',
  ];
  var items1 = [
    'Type',
    'Car',
    'Van',
    'Jeep',
    'Truck',
  ];
  var items2 = [
    'Tyre Count',
    '2',
    '3',
    '4',
    '6',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
          ),
        ],
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
              child: DropdownButton(
                value: dropdownvalue1,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: items1.map((String items1) {
                  return DropdownMenuItem(
                    value: items1,
                    child: Text(items1),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue1 = newValue!;
                  });
                },
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 35),
              child: DropdownButton(
                value: dropdownvalue,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 35),
              child: buildTextField("Vehichle Name"),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 35),
              child: buildTextField("Vehichle Number Plate"),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 35),
              child: DropdownButton(
                value: dropdownvalue2,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: items2.map((String items2) {
                  return DropdownMenuItem(
                    value: items2,
                    child: Text(items2),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue2 = newValue!;
                  });
                },
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 35,
              ),
              child: buildTextField("RTO Registration Number"),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 60),
              child: OutlinedButton.icon(
                icon: Icon(Icons.add),
                label: Text('Add'),
                style: OutlinedButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.deepPurpleAccent,
                  shape: StadiumBorder(),
                ),
                onPressed: () {},
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
