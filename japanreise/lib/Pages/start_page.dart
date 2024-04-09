import 'package:flutter/material.dart';
import 'package:japanreise/Pages/menu_page.dart';
import 'package:japanreise/components/button.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _startPageState();
}

class _startPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 215, 165, 187),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Japan Journey",
                  style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(width: 10),
                Image.asset(
                  "lib/img/Japanflag.png",
                  height: 30,
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Image.asset(
                "lib/img/japan5.png",
                height: 350,
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                "Erleben sie Japan",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                "Entdecke das Land der aufgehende Sonne und tauche ein in eine Welt voller Traditionen,Kulturr und arenberaubender Natur.",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: myButton(
                mytext: "Reise Straten",
                event: () => Navigator.pushNamed(context, '/menupage'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
