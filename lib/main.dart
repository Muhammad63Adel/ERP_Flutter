import 'package:flutter/material.dart';
import 'package:erp/ui/Login.dart';
import 'package:erp/ui/signup.dart';
import 'package:erp/ui/modules.dart';
import 'package:erp/wedgets/Order.dart';
import 'package:erp/ui/CRM.dart';
import 'package:erp/ui/Accounting.dart';
import 'package:erp/ui/Warehousing.dart';
import 'package:erp/ui/splashScreen.dart';


void main() => runApp(new MaterialApp(
  debugShowCheckedModeBanner : false ,

  routes: {
    // When we navigate to the "/" route, build the FirstScreen Widget

    // When we navigate to the "/second" route, build the SecondScreen Widget
    '/signeup': (context) => signup(),
    '/modules': (context) => modules(),
    '/Order': (context) => Order(),
    '/CRM': (context) => Crm(),
    '/Accounting': (context) => Accounting(),
    '/Warehousing': (context) => Warehousing(),
    "/Login": (BuildContext context) => login(),

  },
  home :
  SplashScreen(),
  //title: 'ERP',
  theme: new ThemeData(
    primarySwatch:Colors.purple

  ),


));
