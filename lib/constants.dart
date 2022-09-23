import 'package:flutter/material.dart';

Widget textWidget(
    String textTitle, double fontsize, Color colour, TextAlign textalign) {
  return Text(
    textTitle,
    textAlign: textalign,
    style: TextStyle(
      color: colour,
      fontSize: fontsize,
    ),
  );
}

Widget appbarStuff(BuildContext context, IconData? icon) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      IconButton(
        icon: const Icon(
          Icons.arrow_back_ios_outlined,
          size: 30,
          color: Color(0xffF1F1F1),
        ),
        onPressed: (() {
          Navigator.pop(context);
        }),
      ),
      IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          icon,
          color: const Color(0xffF1F1F1),
          size: 30,
        ),
      ),
      const Icon(
        Icons.menu,
        size: 30,
        color: Color(0xffF1F1F1),
      ),
    ],
  );
}

Widget repetitiveUserID(Color color, String title, Color textColor, VoidCallback onTap ){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      textWidget("Alexandre Butler", 24,
          const Color(0xfff1f1f1).withOpacity(0.8), TextAlign.center),
      const SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              textWidget("@mr_alexandre__", 14,
                  const Color(0xffF1f1f1).withOpacity(0.78), TextAlign.center),
              const SizedBox(
                height: 8,
              ),
              textWidget("748 following", 14,
                  const Color(0xffF1f1f1).withOpacity(0.75), TextAlign.center),
            ],
          ),
          followButton(color, title, textColor, onTap)
        ],
      ),
      const SizedBox(
        height: 8,
      ),
      textWidget(
          "Always remember to be a wolf  warrior no matter what you are going through in life.",
          13,
          Colors.white.withOpacity(0.80),
          TextAlign.start),
      const SizedBox(
        height: 15,
      ),
      followersWidget(),
    ],
  );
}

Widget followersWidget() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textWidget('29', 24, Colors.white, TextAlign.center),
          textWidget('Followers', 13, Colors.white, TextAlign.center),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textWidget('728', 24, Colors.white, TextAlign.center),
          textWidget('Following', 13, Colors.white, TextAlign.center),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textWidget('100', 24, Colors.white, TextAlign.center),
          textWidget('Posts', 13, Colors.white, TextAlign.center),
        ],
      ),
    ],
  );
}

Widget followButton(Color color, String title, Color textColor, VoidCallback onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: const Color(0xff16acdc),
        ),
      ),
      height: 30,
      width: 100,
      child: Center(
        child:
            textWidget(title, 14, textColor, TextAlign.center),
      ),
    ),
  );
}
