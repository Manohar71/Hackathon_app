import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class homepge extends StatefulWidget {
  const homepge({Key? key}) : super(key: key);

  @override
  _homepgeState createState() => _homepgeState();
}

class _homepgeState extends State<homepge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*  appBar: AppBar(
        backgroundColor: Colors.lime[900],
        title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        Text("SRMAP",style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 2.0)),
    Text(" - HACKTHON")
    ],
    ),
    elevation: 0.0,
    ),*/
    body:ListView(
    scrollDirection: Axis.vertical,
    children: <Widget>[
    SizedBox(
    height: 250,
    width: double.infinity,
    child: Carousel(
    dotSize: 4.0,
    dotSpacing: 15.0,
    dotVerticalPadding: 5.0,
    indicatorBgPadding: 5.0,
    dotBgColor: Colors.transparent,
    images: [
    Image.asset('assets/srmhack.jpg',fit: BoxFit.cover),
      Image.asset('assets/srmhack1.jpg',fit: BoxFit.cover),
    Image.asset('assets/srmhack2.jpg',fit: BoxFit.cover),
    Image.asset('assets/srmhack3.jpg',fit: BoxFit.cover),
    ],
    ),
    ),
    SizedBox(height: 20,),
    Text("Leaderboard",style: TextStyle(fontSize: 20),textAlign:TextAlign.center ,),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
    margin: EdgeInsets.all(20),
    child: SizedBox(
    height: 380,
    child:
    ListView.builder(
      itemCount: 20,
      itemBuilder: (context, position) {
        return Card(
          color: Colors.lime[900],
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              position.toString(),
              style: TextStyle(fontSize: 22.0,color: Colors.white),
            ),
          ),
        );
      },
    ),
    ),
    ),
    ),
    ]
    ),

    );
  }
}
