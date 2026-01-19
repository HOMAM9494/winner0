
  import 'package:flutter/material.dart';
import 'package:winner0/ui/components/social_media.dart';

Widget buildDrawer(BuildContext context) {
    const Color navTitleColor = Color.fromARGB(255, 0, 0, 0);
    const Color iconYellow = Color.fromARGB(0, 255, 255, 255);
    return Drawer(
      child: SafeArea(
        child: Row(
          children: [
            // main content
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // header
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // user info (left)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'متجر الربيع',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'malekmanei53@gmail.com',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        // avatar (right)
                        const CircleAvatar(
                          radius: 20,
                          backgroundColor: Color(0xFFE04A4A),
                          child: Text(
                            'م',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 18),
                    // menu items
                    Expanded(
                      child: ListView(
                        children: [
                          _drawerItem(
                            icon: Icons.dashboard_outlined,
                            label: 'لوحة التحكم',
                            iconBg: iconYellow,
                            titleColor: navTitleColor,
                          ),
                          _drawerItem(
                            icon: Icons.settings_outlined,
                            label: 'إعدادات المتجر',
                            iconBg: iconYellow,
                            titleColor: navTitleColor,
                          ),
                          _drawerItem(
                            icon: Icons.menu_book_outlined,
                            label: 'الكتالوج',
                            iconBg: iconYellow,
                            titleColor: navTitleColor,
                          ),
                          _drawerItem(
                            icon: Icons.shopping_bag_outlined,
                            label: 'الطلبات',
                            iconBg: iconYellow,
                            titleColor: navTitleColor,
                          ),
                          _drawerItem(
                            icon: Icons.star_border,
                            label: 'النقاط والمكافآت',
                            iconBg: iconYellow,
                            titleColor: navTitleColor,
                          ),
                          _drawerItem(
                            icon: Icons.notifications_none,
                            label: 'الاشعارات',
                            iconBg: iconYellow,
                            titleColor: navTitleColor,
                          ),
                          _drawerItem(
                            icon: Icons.logout,
                            label: 'تسجيل الخروج',
                            iconBg: const Color.fromARGB(0, 255, 255, 255),
                            titleColor: navTitleColor,
                          ),
                        ],
                      ),
                    ),
                    const Divider(),
                    const SizedBox(height: 8),
                    // follow section
                    const Center(
                      child: Text(
                        'تابعنا واربح نقاطك !',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    const SizedBox(height: 12),
                    buildSocialMediaRow(),
                    const SizedBox(height: 12),
                  ],
                ),
              ),
            ),
            // right-side blue stripe
            Container(
              width: 6,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF00A8E0), Color(0xFF2F80ED)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  Widget _drawerItem({
    required IconData icon,
    required String label,
    required Color iconBg,
    required Color titleColor,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: InkWell(
        onTap: () {},
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                // color: iconBg,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                icon,
                //color: const Color.fromARGB(255, 255, 230, 0),
                color: const Color(0xFFFFD700),
                size: 32,
              ),
            ),
            const SizedBox(width: 12),
            Text(
              label,
              style: TextStyle(
                color: titleColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }

