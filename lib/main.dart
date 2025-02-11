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
   Homescren({Key? key}) : super(key: key);

  List productInfo=[
    {"img":"https://t4.ftcdn.net/jpg/02/81/42/77/360_F_281427785_gfahY8bX4VYCGo6jlfO8St38wS9cJQop.jpg",
    "price":"250",
    "offer":"230"},
    {"img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSz-EPeNl5qhtTMFPK4C9FqGafqQDejdhMRs2QQL-HHmP5qhhF0BYPcsNNj-6ZsN2vAwYs&usqp=CAU",
      "price":"220",
      "offer":"200"},
    {"img":"https://t4.ftcdn.net/jpg/02/81/42/77/360_F_281427785_gfahY8bX4VYCGo6jlfO8St38wS9cJQop.jpg",
      "price":"180",
      "offer":"150"},
    {"img":"https://t4.ftcdn.net/jpg/02/81/42/77/360_F_281427785_gfahY8bX4VYCGo6jlfO8St38wS9cJQop.jpg",
      "price":"180",
      "offer":"120"},
  ];

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
      body:SingleChildScrollView(
        child: Column(

          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.grey,
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: productInfo.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                childAspectRatio: 0.80),
                itemBuilder:(context,index){
                  return Card(
                    color: Colors.grey,
                    child:SizedBox(
                      height: 100,
                      width: 100,
                      child:Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                                "${productInfo[index]["img"]}",height: 150,width:150,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment:CrossAxisAlignment.start ,
                                  children: [
                                    Row(
                                      children: [
                                        Text("Regular Price:"),
                                        Text("${productInfo[index]["price"]}",style: TextStyle(decoration: TextDecoration.lineThrough),),

                                      ],
                                    ),

                                    Text("Offer Price: ${productInfo[index]["offer"]}"),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  const ContactCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey,
      child:SizedBox(
        height: 100,
        width: 100,
        child:Column(
          children: [
            Image.network("https://t4.ftcdn.net/jpg/02/81/42/77/360_F_281427785_gfahY8bX4VYCGo6jlfO8St38wS9cJQop.jpg"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("MediCal App"),
            ),
            Text("18 Task,13 Target"),
          ],
        ),
      ),
    );
  }
}


