import 'dart:io';

import 'package:flutter/material.dart';

class BarraApp extends StatelessWidget {
  const BarraApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(80),
      child: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        leading: Builder(builder: (BuildContext context) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 8, top: 9, right: 6),
              child: IconButton(
                icon: Image.asset('assets/images/icons/menu1.png'),
                color: Colors.black,
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
            ),
          );
        }),
        title: Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 70.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Text(
                  'Location',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.5), fontSize: 15),
                ),
                const Text(
                  'Cameron St. Boston',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: GestureDetector(
              onTap: () {
                print('avatar');
              },
              child: const Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage:
                      AssetImage('assets/images/person/avatar.jpg'),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
