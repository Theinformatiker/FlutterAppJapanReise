import 'package:flutter/material.dart';
import 'package:japanreise/components/button.dart';
import 'package:japanreise/models/cart_model.dart';
import 'package:provider/provider.dart';

class NoodleHarmonyPage extends StatefulWidget {
  const NoodleHarmonyPage({Key? key}) : super(key: key);

  @override
  _FestivalPageState createState() => _FestivalPageState();
}

class _FestivalPageState extends State<NoodleHarmonyPage> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(
      builder: (context, cartmodel, child) => Scaffold(
          backgroundColor: Color.fromARGB(255, 215, 165, 187),
          appBar: AppBar(
            title: Text(
              "J A P A N",
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: false,
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
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
              Center(
                child: Image.asset(
                  "lib/img/japan3.png",
                  height: 200,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 30,
                    ),
                    Text(
                      "4,0",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(
                  "Nodle Harmoy Japan",
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(
                  "Das erwartet Sie",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(
                  "Das Noodle Harmoney in Tokio ist mes als nur ein Resturant, es ist eine Oase für alle Liebhaber authentischer Japanischer Nudelsuppen. Hier vereignigt sich traditionelle Repzepte und  moderne Kochtechnik, um ein großartigen Geschmackerlbenis zu geweährleisten, welches jeden Geschmack trifft. ",
                  style:
                      TextStyle(fontSize: 16, color: Colors.white, height: 1.3),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(15),
                  color: Colors.blue,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "€ 18,00",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: IconButton(
                                    onPressed: () {
                                      cartmodel.removeNudellSuppe();
                                    },
                                    icon: Icon(Icons.remove)),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                cartmodel.nudelsuppe.toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: IconButton(
                                    onPressed: () {
                                      cartmodel.addNudellSuppe();
                                    },
                                    icon: Icon(Icons.add)),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      myButton(
                        mytext: "Zum Einkaufwagen",
                        event: () =>
                            Navigator.popAndPushNamed(context, "/cartPage"),
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
