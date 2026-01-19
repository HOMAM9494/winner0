import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String imgPath;
  final String productName;
  final String price;
  const ProductCard({
    super.key,
    this.imgPath = 'assets/ch1.png',
    this.productName = 'chips papreka',
    this.price = '100',
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (MediaQuery.of(context).size.width / 2) - 24,
      child: Container(
        padding: const EdgeInsetsDirectional.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 8,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 90,
              child: Image.asset(imgPath, fit: BoxFit.contain),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                
                Text(
                  productName,
                  textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 6),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('$price\$', style: TextStyle(color: Colors.black54)),
                // CircleAvatar(
                //   radius: 14,
                //   backgroundColor: Colors.white,
                //   child: Icon(Icons.add, color: Color(0xFF2F80ED), size: 18),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget offerCard() {
  return Container(
    width: 160,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [BoxShadow(color: Colors.grey.shade200, blurRadius: 8)],
    ),
    padding: const EdgeInsetsDirectional.all(12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 70,
          child: Image.asset('assets/ch2.png', fit: BoxFit.contain),
        ),
        const SizedBox(height: 8),
        const Text(
          'chips papreka',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 6),
        const Text('100\$', style: TextStyle(color: Colors.black54)),
      ],
    ),
  );
}
