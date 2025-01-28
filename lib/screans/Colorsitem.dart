import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/category_class_colors.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key});
  final List<ColorCard> cr=const[
    ColorCard(image: "assets/image/colors - Copy/color_black.png", text1: "Burakku", text2: "Black",audioPath: "assets/sounds/colors - Copy/black.wav",),
    ColorCard(image: "assets/image/colors - Copy/color_brown.png", text1: "Chairo", text2: "Brown",audioPath: "assets/sounds/colors - Copy/brown.wav",),
    ColorCard(image: "assets/image/colors - Copy/color_dusty_yellow.png", text1: "Akuriboikeru", text2: "Dusty Yellow",audioPath: "assets/sounds/colors - Copy/dusty yellow.wav",),
    ColorCard(image: "assets/image/colors - Copy/color_gray.png", text1: "Gurē", text2: "Gray",audioPath: "assets/sounds/colors - Copy/gray.wav",),
    ColorCard(image: "assets/image/colors - Copy/color_green.png", text1: "Midori", text2: "Green",audioPath: "assets/sounds/colors - Copy/green.wav",),
    ColorCard(image: "assets/image/colors - Copy/color_red.png", text1: "Aka", text2: "Red",audioPath: "assets/sounds/colors - Copy/red.wav",),
    ColorCard(image: "assets/image/colors - Copy/color_white.png", text1: "Shiro", text2: "White",audioPath: "assets/sounds/colors - Copy/white.wav",),
    ColorCard(image: "assets/image/colors - Copy/yellow.png", text1: "Kiiro", text2: "Yellow",audioPath: "assets/sounds/colors - Copy/yellow.wav",),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: Text("Colors",
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.w900,
                fontSize: 40,
              )),
          backgroundColor: Colors.brown[200],
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: cr.length,
          itemBuilder: (context,i){
            return cr[i];
          },

        )
    );
  }
}

