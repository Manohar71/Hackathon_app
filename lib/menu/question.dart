import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Q & A'),
        backgroundColor: Colors.lime[900],
      ),
      body: Column(children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          alignment: Alignment.bottomLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.photo,
                ),
                iconSize: 25,
                color: Colors.lime[900],
                splashColor: Colors.purple,
                onPressed: () {},
              ),
              Expanded(
                  child: TextField(
                    decoration: InputDecoration.collapsed(hintText: "send a question"),
                    textCapitalization: TextCapitalization.sentences,
                  )
    ),
              IconButton(
                icon: Icon(
                  Icons.send,
                ),
                iconSize: 25,
                color: Colors.lime[900],
                splashColor: Colors.purple,
                onPressed: () {},
              ),
            ],
          )
        ),
      ]
      ),
    );
  }
}
