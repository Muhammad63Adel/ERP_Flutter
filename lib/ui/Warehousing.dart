import 'package:flutter/material.dart';



class Warehousing extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return WarehousingState();
  }
}

class WarehousingState extends State<Warehousing> {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold (
        backgroundColor: Colors.deepOrange,
        appBar: new AppBar(title: new Text("Warehousing Mangement"),
        ),

    );
  }

}