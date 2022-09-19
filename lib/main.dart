import 'package:demoprojectbyaqib/Screen/All_posts.dart';
import 'package:demoprojectbyaqib/Screen/LoginPage.dart';
import 'package:demoprojectbyaqib/Screen/Profiles.dart';
import 'package:demoprojectbyaqib/Screen/SplashScreen.dart';
import 'package:demoprojectbyaqib/Userdata.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}



class MyHome extends StatefulWidget {
  UserData userobj;

  MyHome(this.userobj);


  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(

        appBar: AppBar(
          backgroundColor: Color(0xffE43228),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.menu),
              Text("Lorem Ipsum"),
              Icon(Icons.search),
            ],
          ),

          centerTitle: true,


          bottom: TabBar(
            tabs: [
              Tab(text: "All Post"),
              Tab(text: "Profile")
            ],
          ),

        ),


        body: TabBarView(
          children: [

            All_Post(),
            Profile(widget.userobj)


          ],
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Icon(
            Icons.add
          ),

          backgroundColor: Color(0xffAF0917),
        ),
      ),
    );
  }
}



