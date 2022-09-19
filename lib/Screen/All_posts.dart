import 'dart:convert';
import 'dart:developer';

import 'package:demoprojectbyaqib/Service/Services.dart';
import 'package:flutter/material.dart';


class All_Post extends StatefulWidget {

  @override
  State<All_Post> createState() => _All_PostState();
}

class _All_PostState extends State<All_Post> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Services.getResposnepost(),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {



        if(snapshot.connectionState == ConnectionState.waiting){

          return Center(child: CircularProgressIndicator());

        }

        if(snapshot.hasError){
          return Text("There is some error");

        }


        if(snapshot.hasData){

          List data  = jsonDecode(snapshot.data);




          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("${data[index]["title"]}" , style: TextStyle(
                          color: index==1?Colors.red:Colors.black87 ,
                          fontSize: 18,
                          fontWeight: FontWeight.w400
                      ),),
                      SizedBox(
                        height: 5,
                      ),
                      Text("${data[index]["body"]}",
                        style: TextStyle(
                          color: index==1?Colors.black87:Colors.grey,
                          fontSize: 14,
                        ),
                      ),

                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 10,
                        child: Divider(
                          color: Colors.grey,
                        ),
                      )

                    ],
                  ),
                ),
              );
            },
          );
        }


        return Container();

      },);
  }
}
