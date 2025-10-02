import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Sans', 
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.brown[200],
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.brown, fontSize: 18),
        ),
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[200],
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "My Profile",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Image.asset(
              "assets/images/peem.jpg",
              width: 350,
              height: 350,
            ),
            const SizedBox(height: 20),
            const Text(
              "PEEMWASU BUS",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.brown,
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                "วสุพล พรพนานุรักษ์",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.brown,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            const Divider(
              thickness: 0.3,
              color: Colors.brown,
              indent: 40,
              endIndent: 40,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.star, color: Colors.brown, size: 28),
                Icon(Icons.star, color: Colors.brown, size: 28),
                Icon(Icons.star, color: Colors.brown, size: 28),
                Icon(Icons.star_border, color: Colors.brown, size: 28),
                Icon(Icons.star_border, color: Colors.brown, size: 28),
              ],
            ),
            const SizedBox(height: 8),
            const Text(
              "170 Reviews",
              style: TextStyle(fontSize: 16, color: Colors.brown),
            ),
            const SizedBox(height: 20),
            const Divider(
              thickness: 0.3,
              color: Colors.brown,
              indent: 40,
              endIndent: 40,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ContactIcon(icon: Icons.phone, label: "Phone"),
                ContactIcon(icon: Icons.email, label: "Email"),
                ContactIcon(icon: Icons.facebook_outlined, label: "Social"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ContactIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  const ContactIcon({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 36, color: Colors.brown),
        const SizedBox(height: 5),
        Text(
          label,
          style: const TextStyle(fontSize: 14, color: Colors.brown),
        ),
      ],
    );
  }
}
