import 'package:flutter/material.dart';
import 'package:winner0/ui/theme/colors.dart';

class MyCard extends StatelessWidget {
  final Color background;
  final String image;
  final String logo1;
  final String text1;
  final double radius;
  const MyCard({
    super.key,
    this.background = AppColors.yellow,
    this.image = 'assets/ch3.png',
    this.logo1 = 'assets/logo.png',
    this.text1 = 'الطعم اللذيذ',
    this.radius = 14,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(image, fit: BoxFit.contain),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image(image: AssetImage(logo1), height: 75),
                  SizedBox(height: 8),
                  Text(
                    text1,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget banner([
  String title = 'العروض',
  String subTitle = 'تشكيلة منتجات بسعر مميز',
  String img = 'assets/ch.png',
  String logo = 'assets/ch.png',
]) {
  return Container(
    height: 100,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: Colors.blue.shade50,
    ),
    child: Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  subTitle,
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsetsDirectional.all(12.0),
            child: Image.asset(img, fit: BoxFit.contain),
          ),
        ),
      ],
    ),
  );
}
