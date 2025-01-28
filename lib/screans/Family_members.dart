import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:l_touk/models//category_class_numbers.dart';
import 'package:l_touk/models/category_class_family_members.dart';

class Family extends StatelessWidget {
  const Family({super.key});
  final List<FamilyCard> fmem=const[
    FamilyCard(image: "assets/image/family_members - Copy/family_son.png", text1: "Musuko", text2: "Son",audioPath: "assets/sounds/family_members - Copy/son.wav",),
    FamilyCard(image: "assets/image/family_members - Copy/family_younger_brother.png", text1: "Ototo", text2: "Younger Brother",audioPath: "assets/sounds/family_members - Copy/younger brohter.wav",),
    FamilyCard(image: "assets/image/family_members - Copy/family_younger_sister.png", text1: "Imoto", text2: "Younger Sister",audioPath: "assets/sounds/family_members - Copy/younger sister.wav",),
    FamilyCard(image: "assets/image/family_members - Copy/family_older_sister.png", text1: "Ane", text2: "Older Sister",audioPath: "assets/sounds/family_members - Copy/older sister.wav",),
    FamilyCard(image: "assets/image/family_members - Copy/family_older_brother.png", text1: "Nisan", text2: "Older Bother",audioPath: "assets/sounds/family_members - Copy/older bother.wav",),
    FamilyCard(image: "assets/image/family_members - Copy/family_mother.png", text1: "Hahoaya", text2: "Mother",audioPath: "assets/sounds/family_members - Copy/mother.wav",),
    FamilyCard(image: "assets/image/family_members - Copy/family_grandmother.png", text1: "Sobo", text2: "Grand Mother",audioPath: "assets/sounds/family_members - Copy/grand mother.wav",),
    FamilyCard(image: "assets/image/family_members - Copy/family_grandfather.png", text1: "Ojisan", text2: "Grand Father",audioPath: "assets/sounds/family_members - Copy/grand father.wav",),
    FamilyCard(image: "assets/image/family_members - Copy/family_father.png", text1: "Chichioya", text2: "Father",audioPath: "assets/sounds/family_members - Copy/father.wav",),
    FamilyCard(image: "assets/image/family_members - Copy/family_daughter.png", text1: "Musume", text2: "daughter",audioPath: "assets/sounds/family_members - Copy/daughter.wav",),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: Text("Family Members",
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.w900,
                fontSize: 40,
              )),
          backgroundColor: Colors.brown[200],
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: fmem.length,
          itemBuilder: (context,i){
            return fmem[i];
          },

        )
    );
  }
}

