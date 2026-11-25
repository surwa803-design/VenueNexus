import 'package:material_ui/material_ui.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final Color burgundy = const Color(0xFF641B32);
  final Color cream = const Color(0xFFFAF6F1);
  final Color gold = const Color(0xFFD4AD70);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 85,
        width: double.infinity,
        color: cream,
        padding: const EdgeInsets.symmetric(horizontal: 60),
        child: Row(
          children: [
            Text(
              "VenueNexus",
              style: TextStyle(
                color: burgundy,
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
           /* navItem('Home', '/home'),
            navItem('Explore Halls', '/halls'),
            navItem('Packages', '/packages'),
            navItem('About US', '/about'),
            navItem('Contact US', '/contact'),*/
            const Spacer(),
            TextButton(
              onPressed: () {
                Get.toNamed('/login');
              },
              child: const Text(
                'Log in',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(width: 15),

            // HALL OWNER BUTTON
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/owner-login');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: burgundy,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 18,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text('Hall Owner'),
            ),
          ],
        ),
      ),

      // BOTTOM NAVIGATION / FOOTER
      bottomNavigationBar: Container(
        color: burgundy,
        height: 260,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "VenueNexus",
                        style: TextStyle(
                          color: cream,
                          fontSize: 20,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'Beautiful beginnings. Effortless planning.\nMade for marriage halls in Pakistan.',
                        style: TextStyle(
                            color: cream, fontSize: 14, height: 1.6),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Explore',
                          style: TextStyle(
                              color: gold,
                              fontWeight: FontWeight.bold,
                              fontSize: 15)),
                      const SizedBox(height: 18),
                      Text('Marriage halls',
                          style: TextStyle(color: cream, fontSize: 14)),
                      const SizedBox(height: 8),
                      Text('Packages & menus',
                          style: TextStyle(color: cream, fontSize: 14)),
                      const SizedBox(height: 8),
                      Text('Booking process',
                          style: TextStyle(color: cream, fontSize: 14)),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Get in touch',
                          style: TextStyle(
                              color: gold,
                              fontWeight: FontWeight.bold,
                              fontSize: 15)),
                      const SizedBox(height: 18),
                      Text('hello@venuenexus.pk',
                          style: TextStyle(color: cream, fontSize: 14)),
                      const SizedBox(height: 8),
                      Text('+92 300 00000000',
                          style: TextStyle(color: cream, fontSize: 14)),
                      const SizedBox(height: 8),
                      Text('kamoke, Pakistan',
                          style: TextStyle(color: cream, fontSize: 14)),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '© 2026 VenueNexus. All rights reserved.',
                  style: TextStyle(color: cream, fontSize: 12),
                ),
                Text(
                  'English  /urdu',
                  style: TextStyle(color: cream, fontSize: 13),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

 /* Widget navItem(String title, String route) {
    return TextButton(
      onPressed: () {
        Get.toNamed(route);
      },
      child: const Text(
        title,
        style: TextStyle(
          fontSize: 15,
          color: Color(0xFF555555),
        ),
      ),
    );
  }
}*/}