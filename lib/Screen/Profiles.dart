import 'package:demoprojectbyaqib/Userdata.dart';
import 'package:flutter/material.dart';



class Profile extends StatefulWidget {
  UserData userobj;

  Profile(this.userobj);


  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {



  var name = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3333),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[

                Text("Name" , style: TextStyle(color: Colors.black87 , fontSize: 18 , fontWeight: FontWeight.bold),),
                Text("${widget.userobj.name}"),


              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),


          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[



                Text("UserName" , style: TextStyle(color: Colors.black87 , fontSize: 18 , fontWeight: FontWeight.bold),),
                Text("${widget.userobj.username}"),




              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),



          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[



                Text("Address" , style: TextStyle(color: Colors.black87 , fontSize: 18 , fontWeight: FontWeight.bold),),
                Text("${widget.userobj.address.street}" + "${widget.userobj.address.suite}"+
                    "\n ${widget.userobj.address.city}"),




              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),



          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[



                Text("Zipcode" , style: TextStyle(color: Colors.black87 , fontSize: 18 , fontWeight: FontWeight.bold),),
                Text("${widget.userobj.address.zipcode}"),




              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),



        ],


      ),

    );
  }
}
