import 'package:flutter/material.dart';
import 'package:pet_adoption/barraApp.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: BarraApp(),
      ),
      body: Stack(children: [
        Container(
          height: 80,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: IconButton(
                    icon: Image.asset('assets/images/icons/settings.png'),
                    onPressed: () {},
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 15, bottom: 15),
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Image.asset('assets/images/icons/dog.png'),
                  label: const Text('Dogs'),
                  style: ButtonStyle(
                    backgroundColor: MudarCor(Colors.white, Colors.red),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                    overlayColor: MudarCor(
                        Colors.white, const Color.fromARGB(255, 216, 95, 47)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 15, bottom: 15),
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Image.asset('assets/images/icons/cat.png'),
                  label: const Text(
                    'Cats',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MudarCor(Colors.white, Colors.red),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                    overlayColor: MudarCor(
                        Colors.white, const Color.fromARGB(255, 216, 95, 47)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 15, bottom: 15),
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Image.asset('assets/images/icons/bird.png'),
                  label: const Text(
                    'Birds',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MudarCor(Colors.white, Colors.red),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                    overlayColor: MudarCor(
                        Colors.white, const Color.fromARGB(255, 216, 95, 47)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

// ignore: non_constant_identifier_names
MaterialStateProperty<Color> MudarCor(Color cor, Color corAoApertar) {
  // ignore: prefer_function_declarations_over_variables
  final mudarCor = (Set<MaterialState> states) {
    if (states.contains(MaterialState.pressed)) {
      return corAoApertar;
    } else {
      return cor;
    }
  };
  return MaterialStateProperty.resolveWith(mudarCor);
}
