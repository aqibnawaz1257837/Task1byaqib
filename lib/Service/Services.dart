import 'package:flutter/material.dart';


import 'package:http/http.dart' as http;

class Services{

  static Future<String> getResposne(String email , String password) async{

    var request = http.MultipartRequest('GET', Uri.parse('https://jsonplaceholder.typicode.com/users?email=$email&username=$password'));
    request.fields.addAll({
      'email': '$email',
      'username': '$password'
    });


    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var res = await response.stream.bytesToString();

      return res;
    }
    else {
    print(response.reasonPhrase);

    return "0";
    }


  }


  static Future<String> getResposnepost() async{

    var request = http.Request('GET', Uri.parse('https://jsonplaceholder.typicode.com/posts'));


    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var res = await response.stream.bytesToString();
      return res;
    }
    else {
      print(response.reasonPhrase);
      return "0";
    }

  }

}