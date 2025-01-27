import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:l_touk/models/category_class_phrases.dart';
import 'package:l_touk/screans/Family_members.dart';
import 'package:l_touk/screans/Numbers.dart';
import 'package:l_touk/screans/phrases.dart';
import '../models//category_class_homepage.dart';
import 'package:l_touk/screans/Colors.dart';
class homepage extends StatelessWidget {
  const homepage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TOUK",
            style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.w900,
              fontSize: 40,
            )),
        backgroundColor: Colors.brown[200],
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
                child: Image(
                  image: AssetImage("images/download.png"),
                  width: 320,
                  fit: BoxFit.cover,
                )),
          ),       //<<<<PADDING IMAGE
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Category(
                    onTap: () {
                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context) {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        },
                      );
                      Future.delayed(Duration(seconds: 1), () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return Numbers();
                          }),
                        );
                      });
                    },
                    icon: Icons.format_list_numbered, text: "Number",color: Colors.blueGrey,),
                SizedBox(
                  width: 30,
                ),
                Category(
                  onTap: () {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                    );
                    Future.delayed(Duration(seconds: 1), () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return Family();
                        }),
                      );
                    });
                  },
                    icon: Icons.family_restroom_sharp, text: "Family Members",color: Colors.blueGrey,)
              ],
            ),
          ), //<<<<PADDING ROW NUM,FAMILY
          SizedBox(height: 60,),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Category(
                  onTap: () {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                    );
                    Future.delayed(Duration(seconds: 1), () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return Color();
                        }),
                      );
                    });
                  },
                    icon: Icons.color_lens, text: "Color",color: Colors.blueGrey,),
                SizedBox(
                  width: 30,
                ),
                Category(
                  onTap: () {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                    );
                    Future.delayed(Duration(seconds: 1), () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return phrase();
                        }),
                      );
                    });
                  },
                    icon: Icons.vibration_outlined, text: "Phrases",color: Colors.blueGrey,),
              ],
            ),
          ) //<<<<PADDING ROW color,phrases
        ],
      ),
    );
  }
}

