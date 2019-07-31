import 'package:flutter/material.dart';



class Order extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return OrderState();
  }
}

  class OrderState extends State<Order>{


  @override
  Widget build(BuildContext context) {
  // TODO: implement build
  return  new Scaffold  (
    backgroundColor: Colors.white,
    appBar: new AppBar(title: new Text("Order"),)

    );
  }
  }
