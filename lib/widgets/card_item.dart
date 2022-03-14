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
      this.width = double.infinity, //pega maximo de um numero double
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
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Container(
                padding: EdgeInsets.all(size.height * 8 / 632),
                height: height * (size.height / 1334),
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(height * 25 / 200),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      height: height,
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(height * 22 / 200),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(imagePath),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    SizedBox(
                      height: height - 8,
                      child: LayoutBuilder(builder: (context, constraints) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 250,
                                  child: Text(
                                    petName,
                                    maxLines: 1,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Color(0xff2E2D2B),
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 250,
                                  child: Text(
                                    petBreed,
                                    maxLines: 1,
                                    textAlign: TextAlign.start,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Color(0xff747372),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 250,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 6),
                                    child: Text(
                                      petSexandAge,
                                      maxLines: 2,
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
                                  width: 250,
                                  height: constraints.maxHeight * 0.2,
                                  child: Row(children: [
                                    SizedBox(
                                      height: constraints.maxHeight * 0.1,
                                      child: AspectRatio(
                                        aspectRatio: 1,
                                        child: Image.asset(
                                            'assets/images/icons/placefill.png'),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 200,
                                      child: Text(
                                        distance,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Color(0xffB4B4B4),
                                        ),
                                      ),
                                    ),
                                  ]),
                                ),
                              ],
                            ),
                          ],
                        );
                      }),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 25, //responsivo
              top: 15,
              child: FavoriteButton(
                iconSize: 50,
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
