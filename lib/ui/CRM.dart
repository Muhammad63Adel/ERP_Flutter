import 'package:flutter/material.dart';



class Crm extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CrmState();
  }
}

class CrmState extends State<Crm>{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  new Scaffold  (
        backgroundColor: Colors.deepOrange,
        appBar: new AppBar(title: new Text("CRM"),),
        body: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(

              margin: EdgeInsets.all(30),

              child: new Text("CRM DATA SOON !",
                style: TextStyle(

                  fontSize: 30,
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',

                ),
              ),

            ),
          ],

        )


    ) ;
  }

}