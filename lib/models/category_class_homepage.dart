import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({required this.icon,required this.text,required this.onTap,required this.color});
  String text;
  IconData icon;
  VoidCallback onTap;
  Color color;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap:onTap ,
      child: Container(
        height: 200,
        width: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color:color,
            boxShadow: [BoxShadow(offset: Offset(10, 10))]),
        alignment: Alignment.center,
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon,size: 50,color: Colors.amber,),
            SizedBox(height: 30,),
            Text(
              text,
              style: TextStyle(

                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ],
        ),
      ),
    ); //خاص بالهوم باج هوم
  }
}