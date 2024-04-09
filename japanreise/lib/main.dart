import 'package:flutter/material.dart';
import 'package:japanreise/Pages/event_pages/festival.dart';
import 'package:japanreise/Pages/event_pages/noodle_harmony.dart';
import 'package:japanreise/Pages/menu_page.dart';
import 'package:japanreise/Pages/start_page.dart';
import 'package:japanreise/cart_page.dart';
import 'package:japanreise/models/cart_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    child: const MyApp(),
    create: (context) => CartModel(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartPage(),
      routes: {
        '/startpage': (context) => StartPage(),
        '/menupage': (context) => MenuePage(),
        '/festivalpage': (context) => FestivalPage(),
        '/noodleHarmonyPage': (context) => NoodleHarmonyPage(),
        '/cartPage': (context) => CartPage(),
      },
    );
  }
}
