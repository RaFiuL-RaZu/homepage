import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homescren(),
    );
  }
}

class Homescren extends StatelessWidget {
  const Homescren({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent.shade100,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
        ],
      ),
      drawer: Drawer(),
      body:GridView(
        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          Card(
            color: Colors.grey,
            child: SizedBox(
              height: 100,
              width: 100,
              child: Column(
                children: [
                  Image.network("https://t4.ftcdn.net/jpg/02/81/42/77/360_F_281427785_gfahY8bX4VYCGo6jlfO8St38wS9cJQop.jpg",
                  height: 100,
                  width: 50,),
                  Text("Medical App"),
                  Text("5 Task Now"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
