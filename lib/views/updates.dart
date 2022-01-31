import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hackadhon_test/views/list_update.dart';

class update extends StatefulWidget {
  const update({Key? key}) : super(key: key);
  @override
  _updateState createState() => _updateState();
}

class _updateState extends State<update> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(20.0),

            ),
          );
        },
      ),

    );

  }
}
