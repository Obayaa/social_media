import 'package:flutter/material.dart';
import 'package:social_media_page/constants.dart';
import 'package:social_media_page/screens/screen_five.dart';

class ScreenFour extends StatefulWidget {
  const ScreenFour({super.key});

  @override
  State<ScreenFour> createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFour> {
  int colour = 0;
  Color activeColor = const Color(0xff000000);
  Color textColor = const Color(0xff16acdc);
  String title = "Follow";
  void setColor() {
    setState(() {
      activeColor = const Color(0xff16acdc);
      textColor = const Color(0xffffffff);
      title = "Following";
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Scaffold(
          backgroundColor: const Color(0xff000000),
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  appbarStuff(context, null),
                  const Image(
                    height: 450,
                    width: double.infinity,
                    image: AssetImage("images/page4.png"),
                  ),
                  repetitiveUserID(
                    activeColor,
                    title,
                    textColor,
                    setColor,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                      child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                            pageBuilder:
                                ((context, animation, secondaryAnimation) =>
                                    const ScreenFive()),
                            transitionsBuilder: (context, animation,
                                secondaryAnimation, child) {
                              const begin = Offset(0.0, 1.0);
                              const end = Offset.zero;
                              const curve = Curves.ease;

                              var tween = Tween(begin: begin, end: end)
                                  .chain(CurveTween(curve: curve));

                              return SlideTransition(
                                position: animation.drive(tween),
                                child: child,
                              );
                            }),
                      );
                    },
                    icon: const Icon(
                      Icons.keyboard_arrow_up_rounded,
                      size: 30,
                      color: Color(0xffF1F1F1),
                    ),
                  ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
