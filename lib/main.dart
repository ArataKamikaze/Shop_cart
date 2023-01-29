import 'package:flutter/material.dart';
import 'package:shop_cart/components/bottom_navigation_bar.dart';
import 'package:shop_cart/pages/home/home_page.dart';
import 'package:shop_cart/pages/login/login_page.dart';
import 'package:shop_cart/pages/pantry/pantry_page.dart';
import 'package:shop_cart/pages/stats/stats_page.dart';

import 'components/main_drawer.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: "/",
      debugShowCheckedModeBanner: false,
      routes: {
        "/login_page": (context) => LoginPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override

  int index = 0;

  List<Widget> pages = [
    HomePage(),
    PantryPage(),
    StatsPage(),
  ];

  void swapPage(int i){
    print("${i}, $index");
    setState(() {
      index = i;
    });
    print("${i}, $index");
  }

  
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      drawer: const MainDrawer(),
      bottomNavigationBar: MainBottomNavigationBar(index: index, onTap: swapPage),
    );
  }
}







