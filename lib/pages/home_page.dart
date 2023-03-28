import 'package:flutter/material.dart';
import 'package:flutter_app_1/widgets/mydrawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Catalog App")),
        body: Center(
          child: Container(
            child: const Text("Welcome to Hello Workd App"),
          ),
        ),
        drawer: MyDrawer());
  }
}
