import 'dart:developer';

import 'package:demoprojectbyaqib/Service/Services.dart';
import 'package:demoprojectbyaqib/Userdata.dart';
import 'package:flutter/material.dart';

import '../main.dart';



class LoginPage extends StatefulWidget {

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final _formKey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[




              Image(
                  height: 200,
                  image: AssetImage("images/tass.jpg")),
              SizedBox(
                height: 20,
              ),

              TextFormField(
                controller: email,
                decoration: InputDecoration(
                    hintText: "Enter your email",
                    border: OutlineInputBorder()
                ),
                validator: (value){

                  if(value!.isEmpty){
                    return "please enter your email";
                  }


                },
              ),
              SizedBox(
                height: 10,
              ),

              TextFormField(
                controller: password,
                decoration: InputDecoration(
                    hintText: "Enter your password",
                    border: OutlineInputBorder()
                ),

                validator: (value){

                  if(value!.isEmpty){
                    return "please enter your password";
                  }


                },

              ),

              SizedBox(
                height: 10,
              ),
              MaterialButton(
                color: Color(0xffE43228),
                onPressed: (){


                  if(_formKey.currentState!.validate()){

                    Services.getResposne(email.text, password.text).then((value) {

                      if(value == "0"){
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Invalid Cridentails")));

                      }else{
                        List<UserData> user = userDataFromJson(value);

                        print(user.first.id);

                         Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=> MyHome(user.first)));

                      }

                    });

                  }



                } ,
                child: Text("Login"),
              )

            ],
          ),
        ),
      )
    );
  }
}
