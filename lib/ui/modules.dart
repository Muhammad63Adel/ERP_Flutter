import 'package:flutter/material.dart';
import 'package:erp/wedgets/draweronly.dart';
import 'package:erp/wedgets/SimpleModule.dart';
import 'package:erp/ui/CRM.dart';

// ignore: camel_case_types
class modules extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return moduleState();
  }




}
class moduleState extends State<modules>{

  List module;


  @override
  void initState() {
    module = getModule();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {



    ListTile makeListTile(Module module) => ListTile(
      contentPadding:
      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      leading: Container(
        padding: EdgeInsets.only(right: 12.0),
        decoration: new BoxDecoration(
            border: new Border(
                right: new BorderSide(width: 1.0, color: Colors.white24))),
        child: Container(
          margin: EdgeInsets.only(top:1),
          width: 80,
          height: 80 ,
          decoration: new BoxDecoration(
              image: new DecorationImage(
                image: ExactAssetImage('assets/plane.png'),

              )
          ),
        ),
      ),
      title: Text(
        module.title,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

      subtitle: Row(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Container(
                // tag: 'hero',
                child: LinearProgressIndicator(
                    backgroundColor: Color.fromRGBO(209, 224, 224, 0.2),
                    value: module.indicatorValue,
                    valueColor: AlwaysStoppedAnimation(Colors.purpleAccent)),
              )),
          Expanded(
            flex: 4,
            child: Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(module.level,
                    style: TextStyle(color: Colors.white))),
          )
        ],
      ),
      trailing:
      Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
      onTap: () {

        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Crm())

         );
        },
    );

    Card makeCard(Module module) => Card(
      elevation: 8.0,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
        child: makeListTile(module),
      ),
    );

    final makeBody = Container(
      // decoration: BoxDecoration(color: Color.fromRGBO(58, 66, 86, 1.0)),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: module.length,
        itemBuilder: (BuildContext context, int index) {
          return makeCard(module[index]);
        },
      ),
    );

    return new Scaffold(

      drawer: new draweronly(),
      appBar: new AppBar(title: new Text("modules"),backgroundColor: Color(0xff80E5FF),centerTitle:true,),

      body: makeBody,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),


    );

  }

}

