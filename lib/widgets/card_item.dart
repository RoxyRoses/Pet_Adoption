import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final double height;
  final double width;
  final String imagePath;
  final String petName;
  final String petBreed;
  final String petSexandAge;
  final String distance;

  const CardItem(
      {Key? key,
      this.height = 256,
      this.width = double.infinity,
      this.imagePath = 'assets/images/pets/perfil.png',
      this.petName = 'Dog',
      this.petBreed = 'Breed',
      this.petSexandAge = 'Female, 8 months old',
      this.distance = '2.5 Kms away'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: GestureDetector(
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              height: height * (size.height / 1334),
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(height * 25 / 200),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 30,
                    child: LayoutBuilder(builder: (context, constraints) {
                      return Container(
                        width: constraints.maxWidth,
                        height: constraints.maxWidth,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(height * 25 / 200),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(imagePath),
                          ),
                        ),
                      );
                    }),
                  ),
                  Expanded(
                    flex: 70,
                    child: LayoutBuilder(builder: (context, constraints) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  petName,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Color(0xff2E2D2B),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  child: Text(
                                    petBreed,
                                    textAlign: TextAlign.start,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Color(0xff747372),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  child: Expanded(
                                    child: Text(
                                      petSexandAge,
                                      overflow: TextOverflow.fade,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Color(0xffB4B4B4),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: constraints.maxHeight * 0.1,
                                ),
                                SizedBox(
                                  height: constraints.maxHeight * 0.2,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        height: constraints.maxHeight * 0.1,
                                        child: AspectRatio(
                                          aspectRatio: 1,
                                          child: Image.asset(
                                              'assets/images/icons/placefill.png'),
                                        ),
                                      ),
                                      Text(
                                        distance,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Color(0xffB4B4B4),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 5,
              top: 5,
              child: FavoriteButton(
                // stack positioned
                valueChanged: (_isFavorite) {
                  debugPrint('Is Favorite $_isFavorite)');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
