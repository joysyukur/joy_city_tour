import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'City Tour',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget _galleryImage(String url) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(url, width: 150, height: 300, fit: BoxFit.cover),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('City Tour')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _galleryImage('https://picsum.photos/id/162/300/200'),
                  _galleryImage('https://picsum.photos/id/164/300/200'),
                  _galleryImage('https://picsum.photos/id/174/300/200'),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Explore, Enjoy, Experience.',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              "Explore the charm of our city's hidden gems and embark on a journey to discover the rich cultural heritage, breathtaking landscapes, and unique experiences that await you. From historic landmarks to vibrant markets and serene natural wonders, our city offers a tapestry of experiences that will captivate your senses. Join us in exploring the beauty of our city and create memories that will last a lifetime. Come and visit our city's treasures today.",
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
            const SizedBox(height: 16),

            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                'https://picsum.photos/id/162/200/300',
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Blue body of water',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
