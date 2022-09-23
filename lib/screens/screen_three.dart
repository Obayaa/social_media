import 'package:flutter/material.dart';
import 'package:social_media_page/constants.dart';
import 'package:social_media_page/screens/screen_four.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
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
              image: AssetImage("images/google.png"),
            ),
            textWidget("Interact With The World", 33, Colors.white, TextAlign.center),
            textWidget('''Communicate with other designers from all over the
             world by sending direct messages.''',
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
                  value: 1.0,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              child: textWidget("Finish", 15, Colors.white, TextAlign.center),
              onPressed: () => setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ScreenFour(),
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