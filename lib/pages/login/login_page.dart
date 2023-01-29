import 'package:flutter/material.dart';
import 'package:shop_cart/components/bottom_navigation_bar.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.network(
                "https://media.discordapp.net/attachments/853795302388662302/1027993752226238554/unknown.png?width=886&height=498",
                fit: BoxFit.fitWidth),
            TextField(
              controller: TextEditingController(),
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(),
              decoration: const InputDecoration(
                label: Text("E-mail"),
              ),
            ),
            TextField(
              controller: TextEditingController(),
              keyboardType: TextInputType.number,
              style: const TextStyle(),
              decoration: const InputDecoration(
                label: Text("Senha"),
              ),
            ),
            ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, "/home_page"),
                child: const Text("Login"))
          ],
        ),
      ),
    );
  }
}