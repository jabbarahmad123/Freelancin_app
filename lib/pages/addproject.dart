import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pakfiver/pages/drawer.dart';
import 'package:pakfiver/pages/notification.dart';

class Addproject extends StatefulWidget {
  const Addproject({Key? key}) : super(key: key);

  @override
  _AddprojectState createState() => _AddprojectState();
}

class _AddprojectState extends State<Addproject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Color.fromARGB(2000, 34, 116, 135),
        elevation: 8.0,
        title: Text(
          "Add Project",
        ),
        actions: [
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            child: FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => notification()));
              },
              child: Icon(
                Icons.notifications,
                color: Colors.white,
                size: 28.0,
              ),
            ),
          )
        ],
      ),
      drawer: MyDrawer(),
    );
  }
}
