import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:japanreise/components/button.dart';
import 'package:japanreise/components/event_tile.dart';

class MenuePage extends StatefulWidget {
  const MenuePage({super.key});

  @override
  State<MenuePage> createState() => _MenuePageState();
}

class _MenuePageState extends State<MenuePage> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    List EventList = [
      EventTile(
        name: "Mitama Matsuri Festival",
        price: "€ 49",
        imgPath: "lib/img/japan7.png",
        rating: "5",
        details: () => Navigator.pushNamed(context, '/festivalpage'),
      ),
      EventTile(
        name: "Nodle Harmoy Japan",
        price: "€ 18",
        imgPath: "lib/img/japan3.png",
        rating: "4",
        details: () => Navigator.popAndPushNamed(context, "/noodleHarmonyPage"),
      ),
      EventTile(
        name: "Mount Fuji Tour",
        price: "€ 39",
        imgPath: "lib/img/japan6.png",
        rating: "4,3",
        details: () {},
      )
    ];

    return Scaffold(
      backgroundColor:
          _isDarkMode ? Colors.black : Color.fromARGB(255, 215, 165, 187),
      appBar: AppBar(
        title: Text(
          "J A P A N",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.menu),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                _isDarkMode = !_isDarkMode;
              });
            },
            icon: _isDarkMode
                ? Icon(Icons.light_mode)
                : Icon(
                    Icons.dark_mode,
                    color: Colors.white,
                  ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () => Navigator.pushNamed(context, "/cartPage"),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(25),
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: Color(0xffffb46c),
                borderRadius: BorderRadius.circular(25)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "32 % Nachlass",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(height: 15),
                    myButton(
                      mytext: "Buchen",
                      event: () {},
                    )
                  ],
                ),
                Image.asset(
                  "lib/img/japan1.png",
                  height: 135,
                  width: 150,
                )
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Suche event",
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2)),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Event",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => EventList[index],
              itemCount: EventList.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Der Zeit beliebt",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            padding: EdgeInsets.all(8),
            height: 120,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 94, 185, 160),
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "lib/img/japan2.png",
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Kimono Kultur",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "€ 45",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
