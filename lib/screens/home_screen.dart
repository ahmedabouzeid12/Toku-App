import 'package:flutter/material.dart';
import 'package:toku_app/components/component_item.dart';
import 'package:toku_app/screens/colors_screen.dart';
import 'package:toku_app/screens/familly_members_screen.dart';
import 'package:toku_app/screens/numbers_screen.dart';
import 'package:toku_app/screens/phrases_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: Color(0xff46322b),
        title: Text(
          'Toku',
        ),
      ),
      body: Column(
        children: [
          Category(
              color: Color(0xffEF9235),
              text: 'Numbers',
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context){
                  return NumbersScreen();
                }));
              },
              ),
          Category(
            color: Color(0xff558B37),
            text: 'Familly Members',
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context){
                    return FamillyMembersScreen();
                  }));
            },
          ),
          Category(
            color: Color(0xff79359F),
            text: 'Color',
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context){
                    return ColorsScreen();
                  }));
            },
          ),
          Category(
            color: Color(0xff50ADC7),
            text: 'Phrases',
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context){
                    return PhrasesScreen();
                  }));
            },
          ),
        ],
      ),
    );
  }
}

