import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HNG Mobile App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  // Function to launch URLs
  void _launchURL(String url) async {
    if (!await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HNG Mobile App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to the HNG Mobile App!',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            // Button to GitHub Repository
            ElevatedButton(
              onPressed: () => _launchURL('https://github.com/izimartin/HNG-Mobile-App'),
              child: const Text('View GitHub Repository'),
            ),
            const SizedBox(height: 10),

            // Button to HNG Hire Page
            ElevatedButton(
              onPressed: () => _launchURL('https://hng.tech/flutter-developers'),
              child: const Text('Hire Flutter Developers (HNG)'),
            ),
          ],
        ),
      ),
    );
  }
}
