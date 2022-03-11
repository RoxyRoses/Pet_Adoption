import 'package:flutter/material.dart';
import 'package:pet_adoption/widgets/barraApp.dart';
import 'package:pet_adoption/Models/model.dart';
import 'package:pet_adoption/Models/pet_model.dart';
import 'package:pet_adoption/widgets/card_item.dart';
import 'package:pet_adoption/widgets/category_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Model> categories = <Model>[];
  List<String> petPhotos = <String>[];
  List<PetModel> pets = <PetModel>[];

  @override
  void initState() {
    super.initState();

    categories.add(Model(
      name: 'Dog',
    ));
    categories.add(Model(
      name: 'Cat',
    ));
    categories.add(Model(
      name: 'Bird',
    ));

    petPhotos.add('assets/images/pets/pet1.png');
    petPhotos.add('assets/images/pets/pet2.png');
    petPhotos.add('assets/images/pets/pet3.png');
    petPhotos.add('assets/images/pets/pet4.png');

    pets.add(PetModel(
      name: 'Sparky',
      breed: 'Corgi',
      sexAge: 'Female, 8 months old',
      distance: '2.5 Kms away',
    ));
    pets.add(PetModel(
      name: 'Charlie',
      breed: 'Pug',
      sexAge: 'Male, 1.5 years old',
      distance: '2.6 Kms away',
    ));
    pets.add(PetModel(
      name: 'Max',
      breed: 'Boston Terrier',
      sexAge: 'Male, 1 year old',
      distance: '2.9 Kms away',
    ));
    pets.add(PetModel(
      name: 'Daisy',
      breed: 'Maltese',
      sexAge: 'Female, 7 months old',
      distance: '3 Kms away',
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: BarraApp(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: IconButton(
                    icon: Image.asset('assets/images/icons/settings.png'),
                    onPressed: () {
                      debugPrint('filters');
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 89,
                width: MediaQuery.of(context).size.width * 0.8,
                child: ListView.builder(
                  itemCount: categories.length,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return Row(
                      children: [
                        CategoryItem(
                          externalPadding: const EdgeInsets.only(left: 25),
                          height: 50,
                          categoryName: categories[index].name,
                          tap: () {
                            setState(() {
                              for (var element in categories) {
                                element.isSelected = false;
                              }
                              categories[index].isSelected = true;
                              /*selected = !selected;
                              print(index);*/
                            });
                          },
                          isSelected: categories[index].isSelected,
                        ),
                      ],
                    );
                  }),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 490,
            width: MediaQuery.of(context).size.width * 1,
            child: ListView.builder(
              itemCount: petPhotos.length,
              physics: const BouncingScrollPhysics(),
              itemBuilder: ((context, index) {
                return Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CardItem(
                        imagePath: petPhotos[index],
                        petName: pets[index].name,
                        petBreed: pets[index].breed,
                        petSexandAge: pets[index].sexAge,
                        distance: pets[index].distance,
                      ),
                    ),
                  ],
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
