import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pakfiver/pages/profile.dart';
import 'package:pakfiver/pages/usermain.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pakfiver/login.dart';
import 'profile.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0.0),
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(2000, 34, 116, 135),
            ),
            accountName: Text(
              "Name",
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            accountEmail: Text('abc@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          ListTile(
            title: Text("Home Page"),
            leading: Icon(
              FontAwesomeIcons.home,
              color: Color.fromARGB(2000, 34, 116, 135),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => usermain()));
            },
          ),
          ListTile(
            title: Text("My profile"),
            leading: Icon(
              FontAwesomeIcons.user,
              color: Color.fromARGB(2000, 34, 116, 135),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => profile()));
            },
          ),
          ListTile(
            title: Text("Chat Box"),
            leading: Icon(
              FontAwesomeIcons.box,
              color: Color.fromARGB(2000, 34, 116, 135),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text("Payment"),
            leading: Icon(
              FontAwesomeIcons.moneyCheck,
              color: Color.fromARGB(2000, 34, 116, 135),
            ),
            onTap: () {
              //
            },
          ),
          ListTile(
            title: Text("Term And Condition"),
            leading: Icon(
              FontAwesomeIcons.questionCircle,
              color: Color.fromARGB(2000, 34, 116, 135),
            ),
            onTap: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => CampaignsPage()));
            },
          ),
          ListTile(
            title: Text("Privacy Policy"),
            leading: Icon(
              FontAwesomeIcons.solidThumbsUp,
              color: Color.fromARGB(2000, 34, 116, 135),
            ),
            onTap: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => CampaignsPage()));
            },
          ),
          ListTile(
            title: Text("About Us "),
            leading: Icon(
              FontAwesomeIcons.addressBook,
              color: Color.fromARGB(2000, 34, 116, 135),
            ),
            onTap: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => CampaignsPage()));
            },
          ),
          ListTile(
            title: Text("Logout"),
            leading: Icon(
              FontAwesomeIcons.signOutAlt,
              color: Color.fromARGB(2000, 34, 116, 135),
            ),
            onTap: () async {
              await FirebaseAuth.instance.signOut();
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Login(),
                  ),
                  (route) => false);
            },
          ),
        ],
      ),
    );
  }
}
