import 'package:flutter/material.dart';

import 'coffeelist.dart';

class CoffeeApp extends StatelessWidget {
  const CoffeeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/coffee-main.png",
                width: MediaQuery.of(context).size.width / 2,
              ),
              SizedBox(height: 20),
              Text(
                  "Brew Day",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                    color: Colors.brown[800],
                  ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Text("How do you like your coffee?", style: TextStyle(color: Colors.brown[800])),
              ),
              SizedBox(height: 15),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.brown[800],
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                ),
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CoffeeList(),
                    ),
                  );
              },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 80),
                  child: Text("Enter Shop"),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
