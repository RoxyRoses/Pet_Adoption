import 'package:flutter/material.dart';
import 'package:pet_adoption/barraApp.dart';
import 'package:pet_adoption/model.dart';
import 'package:pet_adoption/widgets/card_item.dart';
import 'package:pet_adoption/widgets/category_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool selected = false;
  late int indexSelecionado;
  List<Model> categories = <Model>[];

  @override
  void initState() {
    categories.add(Model(
      name: 'Dog',
      isSelected: false,
    ));
    categories.add(Model(
      name: 'Cat',
      isSelected: false,
    ));
    categories.add(Model(
      name: 'Bird',
      isSelected: false,
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
                    onPressed: () {},
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
          CardItem(),
        ],
      ),
    );
  }
}
