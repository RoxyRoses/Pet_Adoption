import 'package:flutter/material.dart';

class BarraApp extends StatelessWidget implements PreferredSizeWidget {
  const BarraApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: Builder(builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.only(left: 8, top: 9, right: 6),
          child: IconButton(
            icon: Image.asset('assets/images/icons/menu1.png'),
            onPressed: () {
              debugPrint('drawer');
            },
          ),
        );
      }),
      title: Padding(
        padding: const EdgeInsets.only(top: 10, left: 45),
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
              debugPrint('avatar');
            },
            child: const Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/person/avatar.jpg'),
              ),
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
