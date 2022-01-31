import 'package:flutter/material.dart';
import 'package:hackadhon_test/menu/certificates.dart';
import 'package:hackadhon_test/menu/commitee.dart';
import 'package:hackadhon_test/menu/feedback.dart';
import 'package:hackadhon_test/menu/participentspage.dart';
import 'package:hackadhon_test/menu/question.dart';
import 'package:hackadhon_test/menu/winner_page.dart';

class Menubar extends StatelessWidget {
final padding =EdgeInsets.symmetric(horizontal: 0);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.lime[900],
        child: ListView(
          padding: padding,
          children :<Widget>[
        Padding(
          padding: const EdgeInsets.all(0),
          child: Container(
          width:double.infinity,
          height:150,
          decoration: BoxDecoration(
    color: Colors.lime,
    image: DecorationImage(
    fit: BoxFit.cover,
    image: AssetImage(
    "assets/srmap.jpg"
    ),
    ),
          ),
          ),),

            const SizedBox(height: 16,),
            buildMenuItem(
              text:"winners",
                  icon:Icons.emoji_events,
              onClicked : () => selectedItem(context,0),
            ),
            const SizedBox(height: 16,),
            buildMenuItem(
              text:"participents",
              icon:Icons.person_search_sharp,
                onClicked : () => selectedItem(context,1)
            ),
            const SizedBox(height: 16,),
            buildMenuItem(
              text:"certificates",
              icon:Icons.newspaper_outlined,
                onClicked : () => selectedItem(context,2)
            ),
            const SizedBox(height: 16,),
            buildMenuItem(
              text:"Feedback",
              icon:Icons.feedback,
                onClicked : () => selectedItem(context,3)

            ),
            const SizedBox(height: 16,),
            buildMenuItem(
                text:"Q & A",
                icon:Icons.question_answer,
                onClicked : () => selectedItem(context,4)

            ),
            const SizedBox(height: 16,),
            buildMenuItem(
                text:"Commitee members",
                icon:Icons.group,
                onClicked : () => selectedItem(context,5)

            ),
          ]
        ),
      ),
    );
  }
  Widget buildMenuItem({
      required String text,
      required IconData icon,
    VoidCallback ? onClicked,
  }) {
    final color = Colors.white;
    return ListTile(
      leading: Icon(icon,color: color,),
      title: Text(text,style: TextStyle(color: color),),
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context , int index){
    switch (index){
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => winnerpage(),
        ));
         break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => participents(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => certificate()
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => commitee()
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Question()
        ));
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => feedback()
        ));
        break;
    }
  }
}
