import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
class NumbersCard extends StatelessWidget {
  const NumbersCard ({required this.image,required this.text1,required this.text2,required this.audioPath});
  final String image;
  final String text1;
 final String text2;
 final String audioPath;
  @override
  Widget build(BuildContext context) {
    final AudioPlayer audioPlayer = AudioPlayer();
    return  Card(
      color: Colors.blueGrey,
      child: Row(
        children: [
          Container(
              child: Image.asset(image,scale: 2,),
          color: Colors.amber[100],),
          SizedBox(width: 5,),
          Column (
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(text1,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
              Text(text2,style: TextStyle(fontSize: 10,color: Colors.white),),
            ],
          ),
             Spacer(flex: 1,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
             splashColor: Colors.greenAccent,
              icon: const Icon(Icons.play_arrow),
              onPressed: () async{

    await audioPlayer.setAsset(audioPath); // تحميل ملف الصوت
    await audioPlayer.play(); // تشغيل الصوت
    {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    action: SnackBarAction(label: "hide", onPressed: (){}),
                    backgroundColor: Colors.brown,
                    content:  Text(text1),
                    duration: Duration(milliseconds: 10), // مدة ظهور الرسالة
                  ),
                );
                }
    }
            )
          )
        ],
      ),
    );
  }
}
