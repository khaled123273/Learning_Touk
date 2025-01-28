import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:l_touk/models/category_class_phrases.dart';

class Phrase extends StatelessWidget {
  const Phrase({super.key});
  final List<phrasesCard> ph=const[
    phrasesCard( text1: "Kimasu ka", text2: "are you coming",audioPath: "assets/sounds/phrases - Copy/are_you_coming.wav",),
    phrasesCard( text1: "Kōdoku suru koto o wasurenaide kudasai", text2: "dont forget to subscribe",audioPath: "assets/sounds/phrases - Copy/dont_forget_to_subscribe.wav",),
    phrasesCard( text1: "Go kibun wa ikagadesu ka.", text2: "how are you feeling",audioPath: "assets/sounds/phrases - Copy/how_are_you_feeling.wav",),
    phrasesCard( text1: "Watashi wa anime ga daisukidesu", text2: "i love anime",audioPath: "assets/sounds/phrases - Copy/i_love_anime.wav",),
    phrasesCard( text1: "Watashi wa puroguramingu ga daisukidesu", text2: "i love programming",audioPath: "assets/sounds/phrases - Copy/i_love_programming.wav",),
    phrasesCard( text1: "Puroguramingu wa kantandesu", text2: "programming is easy",audioPath: "assets/sounds/phrases - Copy/programming_is_easy.wav",),
    phrasesCard( text1: "Anata no namae wa nandesuka", text2: "what is your name",audioPath: "assets/sounds/phrases - Copy/what_is_your_name.wav",),
    phrasesCard( text1: "Doko ni iku no", text2: "where are you going",audioPath: "assets/sounds/phrases - Copy/where_are_you_going.wav",),
    phrasesCard( text1: "Hai, kimasu", text2: "yes im coming",audioPath: "assets/sounds/phrases - Copy/yes_im_coming.wav",),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: Text("Phrases",
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.w900,
                fontSize: 40,
              )),
          backgroundColor: Colors.brown[200],
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: ph.length,
          itemBuilder: (context,i){
            return ph[i];
          },

        )


    );
  }
}

