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
  int selectedIndex;

  CardItem(
      {Key? key,
      this.height = 170,
      this.width = 380,
      this.imagePath = 'assets/images/pets/perfil.png',
      this.petName = 'Dog',
      this.petBreed = 'Breed',
      this.selectedIndex = 0,
      this.petSexandAge = 'Female, 8 months old',
      this.distance = '2.5 Kms away'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(height * 25 / 200),
                  color: Colors.white,
                ),
                child: Center(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Container(
                            width: height * 180 / 200,
                            height: height * 180 / 200,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(height * 25 / 200),
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(imagePath),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 35 / 40,
                        child: Column(
                          children: [
                            Wrap(
                              children: [
                                Text(
                                  petName,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: Color(0xff2E2D2B),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: FavoriteButton(
                                    valueChanged: (_isFavorite) {
                                      print('Is Favorite $_isFavorite)');
                                    },
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: height * 3 / 20,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 130),
                                child: Text(
                                  petBreed,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Color(0xff747372),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 2.5 / 20,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 55),
                                child: Text(
                                  petSexandAge,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Color(0xffB4B4B4),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            SizedBox(
                              height: height * 2 / 20,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 100),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      height: height * 2 / 20,
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
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
