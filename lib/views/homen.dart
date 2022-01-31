import 'package:flutter/material.dart';
import 'package:hackadhon_test/views/events.dart';
import 'package:hackadhon_test/views/homepage.dart';
import 'package:hackadhon_test/views/menubar.dart';
import 'package:hackadhon_test/views/updates.dart';

class Homen extends StatefulWidget {
  const Homen({Key? key}) : super(key: key);

  @override
  _HomenState createState() => _HomenState();
}

class _HomenState extends State<Homen> {
  int _currentindex=0;
  final List<Widget> _children =[
    homepge(),
    event(),
    update()
  ];
  void onTappedBar(int index){
    setState(() {
      _currentindex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.lime[900],
        title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        Text("SRMAP",style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 2.0)),
    Text(" - HACKTHON")
    ],
    ),
    elevation: 0.0,
    ),
        body: _children[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentindex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.lime[900],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        unselectedFontSize: 13,
        selectedFontSize: 18,
        onTap: onTappedBar,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home'

          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: 'events'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarms),
              label:'updates'
          ),
        ]

    ),
        drawer:Menubar()
        );
  }
}
