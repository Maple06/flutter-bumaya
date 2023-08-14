import 'package:flutter/material.dart';
import 'package:smekdu/todo.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CoffeeList(),
    );
  }
}

class CoffeeList extends StatefulWidget {
  const CoffeeList({Key? key}) : super(key: key);

  @override
  State<CoffeeList> createState() => _CoffeeListState();
}

class _CoffeeListState extends State<CoffeeList> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        backgroundColor: Colors.transparent,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.transparent),
              child: Center(child: Text('Menu')),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                // Handle the Home menu action
              },
            ),
            ListTile(
              leading: Icon(Icons.my_library_books),
              title: Text('Library'),
              onTap: () {
                // Handle the Library menu action
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Handle the Settings menu action
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Text("How do you like your coffee?", style: TextStyle(fontSize: 17),),
              SizedBox(height: 20),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: ListView(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.indigo.shade50),
                          color: Colors.white
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Image.asset("assets/appicon.png", width: 40),
                                    SizedBox(width: 30),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Long Black", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                                        SizedBox(height: 5),
                                        Text("\$4.25", style: TextStyle(color: Colors.grey),),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              IconButton(icon: Icon(Icons.arrow_forward), onPressed: (){
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => TodoApp(),
                                  ),
                                );
                              }),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.indigo.shade50),
                            color: Colors.white
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Image.asset("assets/appicon.png", width: 40),
                                    SizedBox(width: 30),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Long Black", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                                        SizedBox(height: 5),
                                        Text("\$4.25", style: TextStyle(color: Colors.grey),),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              IconButton(icon: Icon(Icons.arrow_forward), onPressed: (){
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => TodoApp(),
                                  ),
                                );
                              }),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.indigo.shade50),
                            color: Colors.white
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Image.asset("assets/appicon.png", width: 40),
                                    SizedBox(width: 30),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Long Black", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                                        SizedBox(height: 5),
                                        Text("\$4.25", style: TextStyle(color: Colors.grey),),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              IconButton(icon: Icon(Icons.arrow_forward), onPressed: (){
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => TodoApp(),
                                  ),
                                );
                              }),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.indigo.shade50),
                            color: Colors.white
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Image.asset("assets/appicon.png", width: 40),
                                    SizedBox(width: 30),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Long Black", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                                        SizedBox(height: 5),
                                        Text("\$4.25", style: TextStyle(color: Colors.grey),),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              IconButton(icon: Icon(Icons.arrow_forward), onPressed: (){
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => TodoApp(),
                                  ),
                                );
                              }),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                    ],
                  ),
                ),
              ),
              // ListView(),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Container(
                  height: 50,
                  width: double.maxFinite,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.indigo.shade50, width: 2)
                          ),
                          child: Container(
                            width: 120,
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.home),
                                  Text("Shop")
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Icon(Icons.my_library_books),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
