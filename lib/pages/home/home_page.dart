import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_cart/components/main_drawer.dart';

import '../../components/bottom_navigation_bar.dart';

List<Map<String, String>> list = [
  {"name": "compra de Janeiro 2023"},
  {"name": "compra de Dezembro 2022"},
  {"name": "compra de Novembro 2022"},
  {"name": "compra de Outubro 2022"},
  {"name": "compra de Setembro 2022"},
  {"name": "compra de Agosto 2022"},
  {"name": "compra de Julho 2022"},
  {"name": "compra de Junho 2022"},
  {"name": "compra de Maio 2022"},
  {"name": "compra de Abril 2022"},
  {"name": "compra de Março 2022"},
  {"name": "compra de fevereiro 2022"},
  {"name": "compra de Janeiro 2022"},
];



class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAF4ED),
      appBar: AppBar(
        title: const Text(
          "Segunda página",
          style: TextStyle(color: Colors.black, fontFamily: "Comfortaa"),
        ),
        elevation: 0,
        backgroundColor: const Color(0xffFAF4ED),
      ),
      
      floatingActionButton: SizedBox(
        height: 60,
        width: 60,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: const Color(0xff286983),
            child: const Icon(
              Icons.add,
              size: 40,
            ),
            onPressed: () {  },
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) => Container(
          height: 50,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 50/4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xffFFFAF3),
            boxShadow: const [
            BoxShadow(
              blurRadius: 17,
              color: Color(0xffDFDAD9),
              offset: Offset(0, 4)
            ),
            ],
          ),
          child: Center(
            child: ListTile(
              onTap: (){},
              contentPadding: const EdgeInsets.only(
                right: 0,
                left: 20
              ),
              trailing: SvgPicture.asset(
                "svgs/Dots.svg",
                semanticsLabel: 'Menu'
              ),
              leading: Text(
                list[index]["name"]!,
                style: const TextStyle(
                  color: Color(0xff575279),
                  fontFamily: "Comfortaa"
                ),
                )
            ),
          ),
        ),),
    );
  }
}