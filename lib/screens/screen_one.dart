import 'package:flutter/material.dart';
import 'package:social_media_page/screens/screen_two.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Scaffold(
        backgroundColor: const Color(0xff000000),
        body: Column(
          
          children: [
           const Image(
             image: AssetImage("images/Saly-14.png"),
           ),
            textWidget("Make Your Own Profile", 30, Colors.white),
            textWidget("Easy Customization of your own profile to your liking.",
                17, Colors.white),
                
          const Padding(
             padding:  EdgeInsets.only(top: 20, bottom: 40, left: 90, right: 90),
             child: LinearProgressIndicator(
               backgroundColor: Color(0xff10999d),
               valueColor: AlwaysStoppedAnimation<Color>(
                 Color(0xffacebcd),
               ),
               value: 30,
             ),
           ),
    
            TextButton(
              child: textWidget("Next", 15, Colors.white),
              onPressed: () => setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ScreenTwo(), ),);
              }),
              )
          ],
        ),
      ),
    );
  }
}

Widget textWidget(String textTitle, double fontsize, Color colour) {
  return Text(
    textTitle,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: colour,
      fontSize: fontsize,
    ),
  );
}
