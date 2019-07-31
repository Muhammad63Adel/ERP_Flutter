import 'package:flutter/material.dart';

class draweronly extends StatelessWidget {

  String _AccountName = 'Muhammad Adel';
  String _AccountEmail = 'muhammad1995adel@gmail.com';


  @override
  Widget build (BuildContext context) {
    return new Drawer(
        child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName:  Text(_AccountName),
                accountEmail: Text(_AccountEmail),
                currentAccountPicture: new CircleAvatar(
                    backgroundImage: ExactAssetImage('assets/plane.png'),
                ),
              ),

              new ListTile(
                  leading: Icon(Icons.looks_one),
                  title: new Text("Customer Relationship Management"),
                  onTap: () {
                    Navigator.pop(context);
                  }),
              new ListTile(
                  leading: Icon(Icons.looks_two),
                  title: new Text("Billing&Accounting"),
                  onTap: () {
                    Navigator.pop(context);
                  }),
              new ListTile(
                  leading: Icon(Icons.looks_3),
                  title: new Text("Warehouse Mangement"),
                  onTap: () {
                    Navigator.pop(context);
                  }),
              new ListTile(
                  leading: Icon(Icons.settings),
                  title: new Text("Settings"),
                  onTap: () {
                    Navigator.pop(context);
                  }),
              new Divider(),
              new ListTile(
                  leading: Icon(Icons.info),
                  title: new Text("About"),
                  onTap: () {
                    Navigator.pop(context);
                  }),
              new ListTile(
                  leading: Icon(Icons.power_settings_new),
                  title: new Text("Logout"),
                  onTap: () {
                    Navigator.pop(context);
                  }),
            ]
        )
    );
  }
}