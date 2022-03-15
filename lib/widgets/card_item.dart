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
      this.width = 630,
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
                height: height *
                    (size.height /
                        1334), // tamanho total do widget dividido pelo tamanho da tela
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
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            petName,
                            maxLines: 1,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: width * 41 / 632,
                              color: const Color(0xff2E2D2B),
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            petBreed,
                            maxLines: 1,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: width * 32 / 632,
                              color: const Color(0xff747372),
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            petSexandAge,
                            softWrap: true,
                            maxLines: 2,
                            overflow: TextOverflow.fade,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: width * 25 / 632,
                              color: const Color(0xffB4B4B4),
                            ),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Row(children: [
                            SizedBox(
                              height: height * 22 / 256,
                              child: AspectRatio(
                                aspectRatio: 1,
                                child: Image.asset(
                                    'assets/images/icons/placefill.png'),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              distance,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: width * 30 / 632,
                                color: const Color(0xffB4B4B4),
                              ),
                            ),
                          ]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: height * 18 / 256,
              top: height * 18 / 256,
              child: FavoriteButton(
                iconSize: height *
                    46 /
                    256, // altura card * altura do coração / altura do card (Widget)
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
