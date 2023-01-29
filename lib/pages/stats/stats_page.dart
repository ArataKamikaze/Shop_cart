import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../components/bottom_navigation_bar.dart';

class StatsPage extends StatefulWidget {
  const StatsPage({super.key});

  @override
  State<StatsPage> createState() => _StatsPageState();
}

class _StatsPageState extends State<StatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 3,
        padding: EdgeInsets.all(10),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.green
            ),
            margin: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.width,
            width: MediaQuery.of(context).size.width,
            child: Center(child: Text("data")),
          );
        },
      ),
    );
  }
}
