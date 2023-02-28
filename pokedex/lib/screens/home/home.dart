import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/logo.png"),
        title: Text("Charmander #004"),
      ),
      body: Container(
        child: Column(
          children: [
            Image.asset("assets/charmander.png"),
          ],
        ),
      ),
    );
  }
}
