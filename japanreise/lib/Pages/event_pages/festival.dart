import 'package:flutter/material.dart';
import 'package:japanreise/components/button.dart';
import 'package:japanreise/models/cart_model.dart';
import 'package:provider/provider.dart';

class FestivalPage extends StatefulWidget {
  const FestivalPage({Key? key}) : super(key: key);

  @override
  _FestivalPageState createState() => _FestivalPageState();
}

class _FestivalPageState extends State<FestivalPage> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(
      builder: (context, cartModel, child) => Scaffold(
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
                  "lib/img/japan7.png",
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
                      "5,0",
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
                  "Mitama Matsuri Festival",
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
                  "Das Mitama Matsuri Festival in Tokio ist eine faszinierende Feierlichkeit, die jährlich im Sommer stattfindet. Mit tausenden von Laternen, die die Straßen erhellen, bietet es eine beeindruckende Atmosphäre. Besucher können traditionelle Tänze erleben, an Ritualen teilnehmen und die Schönheit der japanischen Kultur in all ihrer Pracht genießen. Ein unvergessliches Erlebnis, das die reiche Geschichte und lebendige Traditionen Japans zelebriert.",
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
                            "€ 49,00",
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
                                      cartModel.removeFestival();
                                    },
                                    icon: Icon(Icons.remove)),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                cartModel.festival.toString(),
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
                                      cartModel.addFestival();
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
                        height: 10,
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
