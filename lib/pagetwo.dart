import 'package:flutter/material.dart';
import 'dart:math';

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  bool isFavorited = false;
  int favoriteCount = 40;
  @override
  Widget build(BuildContext context) {
    void toggleFavorite() {
      setState((){
        if (isFavorited) {
          favoriteCount -= 1;
          isFavorited = false;
        } else {
          favoriteCount += 1;
          isFavorited = true;
        }
      });
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Maps")
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/pemandangan.jpg"),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Sawah Indonesia",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                        ),
                      ),
                      SizedBox(height: 5),
                      Text("Kabupaten Bandung, Indonesia",
                        style: TextStyle(
                            color: Colors.grey,
                          fontSize: 15
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Row(
                      children: [
                        IconButton(
                            icon: (isFavorited ? Icon(Icons.star) : Icon(Icons.star_border)),
                            color: Colors.amber,
                            onPressed: toggleFavorite
                        ),
                        Text("$favoriteCount",
                        style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.phone, color: Colors.lightBlue),
                    SizedBox(height: 10),
                    Container(
                        child: Text("CALL",
                          style: TextStyle(
                            color: Colors.lightBlue,
                        ),
                      )
                    )
                  ],
                ),
                Column(
                  children: [
                    Transform.rotate(
                      angle: 45 * pi / 180,
                      child: Icon(Icons.navigation, color: Colors.lightBlue),
                    ),
                    SizedBox(height: 10),
                    Container(
                        child: Text("ROUTE",
                          style: TextStyle(
                            color: Colors.lightBlue,
                          ),
                        )
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.share, color: Colors.lightBlue),
                    SizedBox(height: 10),
                    Container(
                        child: Text("SHARE",
                        style: TextStyle(
                          color: Colors.lightBlue,
                        ),
                      )
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text("Indonesia adalah negara agraris yang memiliki banyak sawah. Sawah-sawah tersebut tersebar di berbagai wilayah di Indonesia, mulai dari Pulau Jawa, Sumatra, Kalimantan, Sulawesi, dan Papua. Sawah-sawah tersebut merupakan sumber pangan bagi masyarakat Indonesia. Selain itu, sawah-sawah juga merupakan tempat yang indah dan menarik untuk dikunjungi."),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
