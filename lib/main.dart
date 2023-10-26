import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'To link',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Uri _url = Uri.parse('https://www.hay8811.com/?inviteCode=2370059');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.only(top: 80),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/2023-10-26 14.51.45.jpg'),
                fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 200,
              height: 200,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/hay88-club.png'),
                      fit: BoxFit.fill)),
            ),
            const SizedBox(height: 100),
            GestureDetector(
              onTap: () async {
                if (await canLaunchUrl(_url)) {
                  await launchUrl(
                    _url,
                  );
                }
              },
              child: Container(
                width: 300,
                height: 200,
                alignment: Alignment.center,
                // decoration: const BoxDecoration(
                //   image: DecorationImage(image: AssetImage('assets/button.png'))
                // ),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)),
                child: const Text(
                  'ĐĂNG KÝ NGAY',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
