import 'package:flutter/material.dart';

class participents extends StatelessWidget {
  const participents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.lime[900],
        elevation: 2.0,
        centerTitle: true,
        title: Text(
          "Participents",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}