import 'package:flutter/material.dart';
import 'package:winner0/ui/components/card.dart';
import 'package:winner0/ui/components/drawer.dart';
import 'package:winner0/ui/components/producte.dart';
import 'package:winner0/ui/theme/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        drawer: buildDrawer(context),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Builder(
            builder: (context) {
              return IconButton(
                icon: const Icon(
                  Icons.notifications,
                  color: Color.fromARGB(255, 65, 58, 58),
                ),
                onPressed: () => Scaffold.of(context).openDrawer(),
              );
            },
          ),
          centerTitle: true,
          title: Image.asset('assets/logo.png', height: 36),
          actions: [
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 8.0),
              child: IconButton(
                icon: const Icon(
                  Icons.more_vert,
                  color: Color.fromARGB(88, 0, 0, 0),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
        body: ListView(
          padding: const EdgeInsetsDirectional.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
          children: [
            // Banner card
            MyCard(),
            const SizedBox(height: 18),
            // Section title
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'منتجاتنا',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'مشاهدة الكل',
                    style: TextStyle(color: AppColors.primaryBlue),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            // Products
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: List.generate(4, (i) => ProductCard()),
            ),
            const SizedBox(height: 18),
            // Offer banner
            banner(),
            const SizedBox(height: 18),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  3,
                  (i) => Padding(
                    padding: const EdgeInsetsDirectional.only(start: 12.0),
                    child: offerCard(),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 60),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 8,
          shape: const CircularNotchedRectangle(),
          child: SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.storefront_outlined,
                    color: Colors.black54,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search, color: Colors.black54),
                ),
                const SizedBox(width: 48),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.black54,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.person_outline, color: Colors.black54),
                ),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
        floatingActionButton: Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [AppColors.lightBlue, AppColors.primaryBlue],
            ),
            borderRadius: BorderRadius.circular(32),
            boxShadow: [
              BoxShadow(
                // ignore: deprecated_member_use
                color: AppColors.primaryBlue.withOpacity(0.4),
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.transparent,
            elevation: 0,
            child: const Icon(Icons.qr_code_scanner, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
