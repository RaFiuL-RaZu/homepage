
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homescren(),
    );
  }

}

class Homescren extends StatelessWidget{
  const Homescren({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(20.0),bottomLeft: Radius.circular(20.0)),
              color: Colors.deepOrange.shade200,
            ),
          ),
        ],
      ),
    );
  }

}