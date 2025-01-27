import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:l_touk/models//category_class_numbers.dart';

class Numbers extends StatelessWidget {
  const Numbers({super.key});
  final List<Numbers_card> number=const[
  Numbers_card(image: "assets/image/numbers - Copy/number_one.png", text1: "ICHI", text2: "One",audioPath: "assets/sounds/numbers - Copy/number_one_sound.mp3",),
    Numbers_card(image: "assets/image/numbers - Copy/number_two.png", text1: "NI", text2: "Two",audioPath: "assets/sounds/numbers - Copy/number_two_sound.mp3",),
    Numbers_card(image: "assets/image/numbers - Copy/number_three.png", text1: "SAN", text2: "Three",audioPath: "assets/sounds/numbers - Copy/number_three_sound.mp3",),
    Numbers_card(image: "assets/image/numbers - Copy/number_four.png", text1: "SHI", text2: "Four",audioPath: "assets/sounds/numbers - Copy/number_four_sound.mp3",),
    Numbers_card(image: "assets/image/numbers - Copy/number_five.png", text1: "GO", text2: "Five",audioPath: "assets/sounds/numbers - Copy/number_five_sound.mp3",),
    Numbers_card(image: "assets/image/numbers - Copy/number_six.png", text1: "ROKU", text2: "Six",audioPath: "assets/sounds/numbers - Copy/number_six_sound.mp3",),
    Numbers_card(image: "assets/image/numbers - Copy/number_seven.png", text1: "SEBUN", text2: "Seven",audioPath: "assets/sounds/numbers - Copy/number_seven_sound.mp3",),
    Numbers_card(image: "assets/image/numbers - Copy/number_eight.png", text1: "HACHI", text2: "Eight",audioPath: "assets/sounds/numbers - Copy/number_eight_sound.mp3",),
    Numbers_card(image: "assets/image/numbers - Copy/number_nine.png", text1: "KU", text2: "Nine",audioPath: "assets/sounds/numbers - Copy/number_nine_sound.mp3",),
    Numbers_card(image: "assets/image/numbers - Copy/number_ten.png", text1: "JUU", text2: "Ten",audioPath: "assets/sounds/numbers - Copy/number_ten_sound.mp3",),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("Numbers",
            style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.w900,
              fontSize: 40,
            )),
        backgroundColor: Colors.brown[200],
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: number.length,
        itemBuilder: (context,i){
          return number[i];
        },

          )


    );
  }
}

