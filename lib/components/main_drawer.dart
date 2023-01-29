
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 300,
      child: Align(
        alignment: Alignment.center,
        child: SizedBox(
          height: 300,
          child: ListView(
            children: [
              ListTile(
                  onTap: () => Navigator.pushNamed(context, '/page_2'),
                  title: const Text("Segunda página")),
              ListTile(
                  onTap: () => Navigator.pushNamed(context, '/page_3'),
                  title: const Text("Terceira página")),
              ListTile(
                onTap: () => Navigator.pushNamed(context, '/'),
                title: const Text("Sair"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}