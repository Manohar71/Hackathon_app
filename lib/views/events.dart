import 'package:flutter/material.dart';
import 'package:hackadhon_test/views/list_update.dart';

class event extends StatefulWidget {
  const event({Key? key}) : super(key: key);

  @override
  _eventState createState() => _eventState();
}

class _eventState extends State<event> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all((16.0)),
            child: Container(
              child:FittedBox(
                child: Material(
                  color: Colors.lime[900],
                  borderRadius: BorderRadius.circular(24.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 200,
                        height: 135,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(24.0),
                          child:Image(
                            fit: BoxFit.contain,
                            alignment: Alignment.topRight,
                            image: AssetImage('assets/srmhack4.jpg'),
                          ) ,
                        ),

                      ),
                      Container(
                        child:Padding(
                            padding: EdgeInsets.all(10.0),

                            child: Text("WebMobDevthon",
                                style: TextStyle(fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  letterSpacing: 2.0,
                                  wordSpacing: 2.0,
                                  fontSize: 20.0,
                                )
                            )
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
