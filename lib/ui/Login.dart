import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:erp/functions/requestLoginAPI.dart';


class login  extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return loginState();
  }


}

class loginState extends State<login>{

  String email = "";
  String password = "";
  final _emailController =  TextEditingController();
  final _passwordController = TextEditingController();

/*

  Future<String>getData()async{

    http.Response response = await http.get(
      Uri.encodeFull("https://jsonplaceholder.typicode.com/users"),
      headers: {
        "Accept":"application/json"
      }
    );

    List data = json.decode(response.body);
    for(int i=0; i<data.length;i++) {
      if (data[i]["email"] == email){
        if (data[i]["username"] == password){
          Navigator.pushNamed(context, '/modules');
          break;

        }else{
          return showDialog(
            context: context,
            builder: (context){
              return AlertDialog(
                content: Text("the password is wrong"),
              );
            },
          );
        }
      }else{
        return showDialog(
          context: context,
          builder: (context){
            return AlertDialog(
              content: Text("we can't find this email ... please signup and try again"),
            );
          },
        );
      }
    }
  }
*/
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  new Scaffold  (
      backgroundColor: Colors.white,
      appBar: new AppBar(title: new Text("Login"),),
      body: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           children: <Widget>[
              Container(
                margin: EdgeInsets.only(top:10),
                width: 200,
                height: 200,
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                      image: ExactAssetImage('assets/plane.png'),

                  )
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
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
                          hintText: "Enter your email",
                          border:
                          OutlineInputBorder(borderRadius: BorderRadius.circular(25.0))
                      ),

                    )

                  ],

                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0,bottom: 15.0),
                child: Column(
                  children: <Widget>[
                    TextField(

                      controller:_passwordController,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.security),
                          labelStyle: TextStyle(

                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color:Colors.grey
                          ),
                          hintText: "Enter your password",
                          border:
                          OutlineInputBorder(borderRadius: BorderRadius.circular(25.0))
                      ),
                      obscureText: true,
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
                    padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    onPressed: () {

                      requestLoginAPI(context, _emailController.text, _passwordController.text);

                    },
                    child: Text("Login",
                      textAlign: TextAlign.center

                    )

                  )
              ),
              Container(
                alignment: Alignment(1.0, 0.0),
                padding: EdgeInsets.only(top: 15.0, left: 20.0,right: 20,bottom: 20),

                child: new GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, '/signeup');
                  },
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                        decoration: TextDecoration.underline),
                  ),
                ),
              ),
            ],

    ));
  }

}