import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pet_adoption/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp]); // bloqueia rotação celular
    return MaterialApp(
      home: const Center(
        child: HomePage(),
      ),
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 215, 214, 219),
      ),
    );
  }
}
