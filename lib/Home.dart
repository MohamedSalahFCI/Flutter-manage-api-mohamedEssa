import 'package:flutter/material.dart';
import 'dart:async';
//l convert mohma 3shan anta hta5od l data 3obara 3n json w hat7wlha 
import 'dart:convert';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Api Requests ya momo"),
      ),
      body: new Container(
        
      ),
    );
  }
  
    //ay 7aga 5arg l application haykon m7tag async
Future<String> getData() async{
  String myUrl= "://jsonplaceholder.typicode.com";
  //fe 7alt wgood astgaba mn l link aly fo2 dh haygeli response
  //await .. y3ny haystna l Agaba mn l Website ally Hayegi mno l data 
  http.Response response = await http.get(myUrl);
  return response.body; 
    }
}
