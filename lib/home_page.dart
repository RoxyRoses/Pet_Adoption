import 'package:flutter/material.dart';
import 'package:pet_adoption/barraApp.dart';
import 'package:pet_adoption/categorias.dart';
import 'package:pet_adoption/widgets/category_item.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool selected = false;
  final List<String> categories = ['Dog', 'Cat', 'Bird'];

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
                return CategoryItem(
                  externalPadding: EdgeInsets.only(left: 25),
                  height: 50,
                  categoryName: categories[index],
                  tap: () {
                    setState(() {
                      selected = !selected;
                      print(selected);
                    });
                  },
                  isSelected: selected,
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
