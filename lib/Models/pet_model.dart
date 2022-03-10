import 'package:flutter/cupertino.dart';

class PetModel extends StatelessWidget {
  String name;
  String breed;
  String sexAge;
  String distance;

  PetModel({
    Key? key,
    this.name = "",
    this.breed = "",
    this.sexAge = "",
    this.distance = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
