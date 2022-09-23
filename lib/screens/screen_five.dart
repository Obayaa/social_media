import 'package:flutter/material.dart';
import 'package:social_media_page/constants.dart';

class ScreenFive extends StatefulWidget {
  const ScreenFive({super.key});

  @override
  State<ScreenFive> createState() => _ScreenFiveState();
}

class _ScreenFiveState extends State<ScreenFive> {
  int colour = 0;
  Color activeColor = const Color(0xff16acdc);
  Color textColor = const Color(0xffffffff);
  String title = "Following";
  void setColor (){
    setState(() {
      activeColor = const Color(0xff000000);
      textColor = const  Color(0xff16acdc);
      title = "Follow";
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  appbarStuff(context, Icons.keyboard_arrow_down_rounded),
                  const CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 47,
                      backgroundImage: AssetImage("images/MaskGroup.png"),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  repetitiveUserID(
                    activeColor,
                    title,
                    textColor,
                    setColor
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      textWidget("Followed by", 14, const Color(0xffF1F1F1), TextAlign.center),
                      const Image(image: AssetImage("images/groupPic.png")),
                      textWidget("24 others", 14, const Color(0xfff1f1f1), TextAlign.center),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  textWidget("Posts", 14, const Color(0xfff1f1f1), TextAlign.start),
                  Row(
                    children: const[
                      Image(image: AssetImage("images/wolf.png"),),
                      Spacer(),
                      Image(image: AssetImage("images/wolf2.png"),),
                    ],
                  ),
                  const Image(image: AssetImage("images/dogWolf.png"),),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
