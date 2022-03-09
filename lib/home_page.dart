import 'package:flutter/material.dart';
import 'package:pet_adoption/barraApp.dart';
import 'package:pet_adoption/model.dart';
import 'package:pet_adoption/widgets/category_item.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

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
          SizedBox(
            height: 89,
            child: ListView.builder(
              itemCount: categories.length,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) {
                return Row(
                  children: [
                    CategoryItem(
                      externalPadding: EdgeInsets.only(left: 25),
                      height: 50,
                      categoryName: categories[index].name,
                      tap: () {
                        setState(() {
                          categories.forEach((element) {
                            element.isSelected = false;
                          });
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

          // const Categorias(),
          // SizedBox(
          //   height: 80,
          //   child: ListView(
          //     scrollDirection: Axis.vertical,
          //     children: [
          //       Card(
          //         child: InkWell(
          //           splashColor: Colors.red.withAlpha(30),
          //           onTap: () {
          //             debugPrint('apertou');
          //           },
          //           child: const SizedBox(
          //             width: 300,
          //             height: 100,
          //             child: Text('Teste'),
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}

bool ActivateButton(bool activate) {
  late bool isSelected;
  return isSelected = true;
}
