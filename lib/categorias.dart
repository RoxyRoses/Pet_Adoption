import 'package:flutter/material.dart';

class Categorias extends StatefulWidget {
  const Categorias({ Key? key }) : super(key: key);

  @override
  State<Categorias> createState() => _CategoriasState();
}

class _CategoriasState extends State<Categorias> {
  bool _botaoAtivadoDog = true;
  bool _botaoAtivadoCat = true;
  bool _botaoAtivadoBird = true;

  @override
  Widget build(BuildContext context) {
    return  Stack(children: [
        SizedBox(
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
                  onPressed: () {
                    setState(() {
                      _botaoAtivadoDog = !_botaoAtivadoDog;
                      _botaoAtivadoBird = true;
                      _botaoAtivadoCat = true;
                    });
                  },
                  icon: Image.asset('assets/images/icons/dog.png'),
                  label: Text(
                    'Dogs',
                    style: TextStyle(
                        color: _botaoAtivadoDog ? Colors.black : Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: _botaoAtivadoDog ? Colors.white : Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(left: 15, top: 15, bottom: 15),
                child: ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      _botaoAtivadoCat = !_botaoAtivadoCat;
                      _botaoAtivadoDog = true;
                      _botaoAtivadoBird = true;
                    });
                  },
                  icon: Image.asset('assets/images/icons/cat.png'),
                  label: Text(
                    'Cats',
                    style: TextStyle(
                        color: _botaoAtivadoCat ? Colors.black : Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: _botaoAtivadoCat ? Colors.white : Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(left: 15, top: 15, bottom: 15),
                child: ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      _botaoAtivadoBird = !_botaoAtivadoBird;
                      _botaoAtivadoCat = true;
                      _botaoAtivadoDog = true;
                    });
                  },
                  icon: Image.asset('assets/images/icons/bird.png'),
                  label: Text(
                    'Birds',
                    style: TextStyle(
                        color: _botaoAtivadoBird ? Colors.black : Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: _botaoAtivadoBird ? Colors.white : Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]);
  }
}