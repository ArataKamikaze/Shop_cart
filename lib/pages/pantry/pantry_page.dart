import 'package:flutter/material.dart';

import '../../components/bottom_navigation_bar.dart';
import '../../components/main_drawer.dart';

class PantryPage extends StatelessWidget {
  const PantryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: Image.asset("images/img_$index.jpg"),
                    ),
                    Column(
                      children: [
                        Text("nome do produto"),
                        Text("Categoria"),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
