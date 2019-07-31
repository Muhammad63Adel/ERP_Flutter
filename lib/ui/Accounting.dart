import 'package:flutter/material.dart';



class Accounting extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AccountingState();
  }
}

class AccountingState extends State<Accounting>{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  new Scaffold  (
        backgroundColor: Colors.white,
        appBar: new AppBar(title: new Text("Accounting"),)

    );
  }
}
