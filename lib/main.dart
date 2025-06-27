import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Profile"),
          backgroundColor: const Color.fromARGB(255, 214, 246, 176),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/profile.png"),
            const SizedBox(height: 20), // Add space between image and text
            const Text(
              "Ass.Pro. Phisan Sookkee",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "อาจารย์ประจำสาขาวิชาวิทยาการคอมพิวเตอร์, คณะศิลปศาสตร์และวิทยาศาสตร์ \nมหาวิทยาลัยราชภัฏศรีสะเกษ",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Divider(
                color: const Color.fromARGB(255, 184, 183, 183),
                thickness: 0.5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: const Color.fromARGB(255, 14, 131, 78),
                      ),
                      Icon(Icons.star, color: Color.fromARGB(255, 14, 131, 78)),
                      Icon(
                        Icons.star,
                        color: const Color.fromARGB(255, 14, 131, 78),
                      ),
                      Icon(
                        Icons.star,
                        color: const Color.fromARGB(255, 153, 155, 153),
                      ),
                      Icon(
                        Icons.star,
                        color: const Color.fromARGB(255, 153, 155, 153),
                      ),
                    ],
                  ),
                  Text(
                    "170 Reviews",
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Divider(
                color: const Color.fromARGB(255, 184, 183, 183),
                thickness: 0.5,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.phone, size: 50),
                    Text("phone", style: TextStyle(fontSize: 20)),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.email, size: 50),
                    Text("email", style: TextStyle(fontSize: 20)),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.facebook_outlined, size: 50),
                    Text("social", style: TextStyle(fontSize: 20)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
