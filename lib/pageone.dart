import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Flutter"),
        centerTitle: true,
      ),
      body: Container(
        // width: 100,
        // height: 100,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Icon(Icons.access_alarm),
                Container(
                  child: Text("Reminder")
                )
              ],
            ),
            Column(
              children: [
                Icon(Icons.bolt),
                Container(
                    child: Text("Electricity")
                )
              ],
            ),
            Column(
              children: [
                Icon(Icons.account_box_rounded),
                Container(
                    child: Text("My Account")
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
