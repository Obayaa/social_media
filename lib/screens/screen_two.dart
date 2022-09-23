import 'package:flutter/material.dart';
import 'package:social_media_page/constants.dart';
import 'package:social_media_page/screens/screen_three.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Scaffold(
        backgroundColor: const Color(0xff000000),
        body: Column(
          children: [
            const Image(
              height: 600,
              width: 500,
              image: AssetImage("images/hand.png"),
            ),
            textWidget("Share Personal Projects", 33, Colors.white, TextAlign.center),
            textWidget('''Interact with people from all over the world by sharing
             your projects online.''',
                14, Colors.white, TextAlign.center),
            Container(
              margin:const EdgeInsets.symmetric(vertical: 20),
              width: 70,
              height: 5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: LinearProgressIndicator(
                  backgroundColor: const Color(0xff1AC5FB).withOpacity(0.3),
                  valueColor: const AlwaysStoppedAnimation<Color>(
                    Color(0xff1AC5FB),
                  ),
                  value: 0.7,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              child: textWidget("Next", 15, Colors.white, TextAlign.center),
              onPressed: () => setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ScreenThree(),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}