import 'package:flutter/material.dart';
import 'package:pet_adoption/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Center(
        child: HomePage(),
      ),
      theme: ThemeData( scaffoldBackgroundColor: Color.fromARGB(255, 215, 214, 219),
      ),
    );
  }
}
