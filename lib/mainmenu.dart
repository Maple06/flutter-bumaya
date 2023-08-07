import 'package:flutter/material.dart';

import 'common_layout.dart';
import 'pagetwo.dart';
import 'coffee.dart';
import 'todo.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu")
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CommonLayout(),
                ),
              );
            },
            child: Text("Common Layout")
            ),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PageTwo(),
                ),
              );
            },
                child: Text("Maps Page Two")
            ),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CoffeeApp(),
                ),
              );
            },
                child: Text("Coffee App")
            ),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => TodoApp(),
                ),
              );
            },
                child: Text("ToDo App")
            ),
          ],
        )
      )
    );
  }
}
