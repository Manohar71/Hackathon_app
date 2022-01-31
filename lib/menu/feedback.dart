import 'package:flutter/material.dart';
class feedback extends StatelessWidget {
  const feedback({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
    backgroundColor: Colors.lime[900],
    elevation: 2.0,
    centerTitle: true,
    title: Text(
    "Commitee members",
    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    ),
        ),
      body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                margin: EdgeInsets.all(20),
                child: SizedBox(
                    height: 630,
                    child: ListView.separated(
                      itemBuilder: (context, position) {
                        return Card(
                          color: Colors.lime[900],
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              'sir / Madem',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, position) {
                        return Card(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              ' Head of  department ',
                              style: TextStyle(color: Colors.lime[900]),
                            ),
                          ),
                        );
                      },
                      itemCount: 20,
                    ),
                ),
              ),
            ),
          ]
      ),
    );
  }
}
