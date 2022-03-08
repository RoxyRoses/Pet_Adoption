import 'package:flutter/material.dart';
import 'package:pet_adoption/barraApp.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: BarraApp(),
      ),
    );
  }
}
