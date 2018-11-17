import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

void main() async{
  Map data = await getData();
 // String myData = data[0]['title'];
  print(data['location']);
  runApp(new MaterialApp(
    title: 'Muhammed Essa',
    home: new Scaffold(
backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: new Text('data' ),
      ),
      body: new Container(
          margin: EdgeInsets.only(left: 22.0),
        child: new Column(
          children: <Widget>[
            new Padding(padding: EdgeInsets.only(top: 75.0)),

            new Center(
             child: new Icon(Icons.ac_unit,color: Colors.white,size: 55.4,),
            ),

            new Padding(padding: EdgeInsets.only(top: 55.0)),
            new Text('Name: ${data['location']['name']}',

              style: TextStyle(

                fontStyle: FontStyle.italic,
                color: Colors.white,
                fontSize: 55.5,
              ),
            ),
            new Text('Region: ${data['location']['region']}',

              style: TextStyle(

                fontStyle: FontStyle.italic,
                color: Colors.white,
                fontSize: 22.5,
              ),
            ),
            new Text('Country: ${data['location']['country']}',

              style: TextStyle(

                fontStyle: FontStyle.italic,
                color: Colors.white,
                fontSize: 22.5,
              ),
            ),
            new Text('Localtime: ${data['location']['localtime']}',

              style: TextStyle(

                fontStyle: FontStyle.italic,
                color: Colors.white,
                fontSize: 22.5,
              ),
            ),
            new Text('Latitude : ${data['location']['lat']}',

              style: TextStyle(

                fontStyle: FontStyle.italic,
                color: Colors.white,
                fontSize: 22.5,
              ),
            ),
            new Text('Longitude: ${data['location']['lon']}',

              style: TextStyle(

                fontStyle: FontStyle.italic,
                color: Colors.white,
                fontSize: 22.5,
              ),
            ),
          ],
        ),
      ),
    ),
  ));
}

Future<Map> getData() async{
  String myUrl = 'https://api.apixu.com/v1/current.json?key=d5353fd191894297a7d183708180210&q=Paris';
  http.Response response = await http.get(myUrl);
  return json.decode(response.body);
}



