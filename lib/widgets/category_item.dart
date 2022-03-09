import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final double height;
  final String categoryName;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? externalPadding;
  final bool isSelected;
  final Function()? tap;

  const CategoryItem({
    Key? key,
    this.height = 89,
    this.categoryName = 'Dogs',
    this.padding,
    this.externalPadding = const EdgeInsets.only(left: 5),
    this.tap,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late EdgeInsetsGeometry? localPadding;

    if (padding == null) {
      localPadding = EdgeInsets.all(height * 0.22);
    } else {
      localPadding = padding;
    }

    Color localColor = const Color(0xffFFFFFF);
    Color fontColor = const Color(0xff000000);
    String imagePath = '';

    switch (isSelected) {
      case true:
        localColor = const Color(0xffFF5F50);
        fontColor = const Color(0xffFFFFFF);
        if (categoryName == 'Dog') {
          imagePath = 'assets/images/icons/dog.png';
        }
        if (categoryName == 'Cat') {
          imagePath = 'assets/images/icons/cat.png';
        }
        if (categoryName == 'Bird') {
          imagePath = 'assets/images/icons/bird.png';
        }
        break;
      case false:
        localColor = const Color(0xffFFFFFF);
        fontColor = const Color(0xff000000);
        if (categoryName == 'Dog') {
          imagePath = 'assets/images/icons/dog.png';
        }
        if (categoryName == 'Cat') {
          imagePath = 'assets/images/icons/cat.png';
        }
        if (categoryName == 'Bird') {
          imagePath = 'assets/images/icons/bird.png';
        }
        break;
      default:
    }

    return GestureDetector(
      onTap: tap,
      child: Padding(
        padding: externalPadding!,
        child: Center(
          child: Container(
            height: height,
            padding: localPadding,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(height * 25 / 89),
              color: localColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: height * 50 / 89,
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Image.asset(imagePath),
                  ),
                ),
                SizedBox(width: height * 20 / 89),
                FittedBox(
                  child: Text(
                    categoryName,
                    style:
                        TextStyle(fontSize: height * 25 / 89, color: fontColor),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
