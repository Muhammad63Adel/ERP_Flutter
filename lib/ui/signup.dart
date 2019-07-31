import 'package:flutter/material.dart';


class signup  extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return signeState();
  }


}

class signeState extends State<signup>{
  final _emailController =  TextEditingController();
  final _passwordController = TextEditingController();
  final _userNameController =  TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _addressController = TextEditingController();

  String email = "";
  String password = "";
  String name = "";
  String phone = "";
  String address = "";


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  new Scaffold  (
        backgroundColor: Colors.white,
        appBar: new AppBar(title: new Text("Sign Up"),),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            Container(
              margin: EdgeInsets.only(top:10),
              width: 100,
              height: 100,
              decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: ExactAssetImage('assets/plane.png'),

                  )
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 7.0, left: 15.0, right: 15.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: _userNameController,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color:Colors.grey
                        ),
                        hintText: "Full Name",
                        border:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(25.0))
                    ),

                  )

                ],

              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 5.0, left: 15.0, right: 15.0,bottom: 2.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: _phoneNumberController,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.add_call),
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color:Colors.grey
                        ),
                        hintText: "Phone number",
                        border:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(25.0))
                    ),
                    keyboardType: TextInputType.number,
                  )

                ],

              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 5.0, left: 15.0, right: 15.0,bottom: 2.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color:Colors.grey
                        ),
                        hintText: "E-mail",
                        border:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(25.0))
                    ),
                    keyboardType: TextInputType.emailAddress,
                  )

                ],

              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 5.0, left: 15.0, right: 15.0,bottom: 2.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.security),
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color:Colors.grey
                        ),
                        hintText: "Password",
                        border:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(25.0))
                    ),
                    obscureText: true,

                  )

                ],

              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 5.0, left: 15.0, right: 15.0,bottom: 10.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: _addressController,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.location_on),
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color:Colors.grey
                        ),
                        hintText: "Address",
                        border:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(25.0))
                    ),

                  )

                ],

              ),
            ),
            Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(30.0),
                color: Color(0xff80E5FF),
                child: MaterialButton(
                    minWidth: 300.0,
                    height: 40.0,
                    padding: EdgeInsets.fromLTRB(7.0, 15.0, 20.0, 15.0),
                    onPressed: () {
                      Navigator.pushNamed(context, '/modules');
                      email = _emailController.text;
                      password= _passwordController.text;
                      name= _userNameController.text;
                      phone= _phoneNumberController.text;
                      address= _addressController.text;

                      /*
                        return showDialog(
                          context: context,
                          builder: (context){
                            return AlertDialog(
                              content: Text(email
                                  +'\n'+ password
                                  +'\n'+ name
                                  +'\n'+ phone
                                  +'\n'+ address),
                            );
                          },
                        );
                        */
                    },
                    child: Text("Sign up",
                        textAlign: TextAlign.center

                    )
                )
            ),

          ],



        )
    );
  }

}