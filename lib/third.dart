import 'package:flutter/material.dart';


class third extends StatefulWidget {
  const third({super.key});

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:Padding(
      padding: const EdgeInsets.fromLTRB(16,60, 16,0),
      child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 25,
        mainAxisSpacing: 25
      ),children: [
        Container(
          height: 200,width: 200,decoration: BoxDecoration(color: Colors.white, boxShadow: [BoxShadow(
          color: Colors.grey,blurRadius: 10,spreadRadius: 5
        )],
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(30),


        ),
        ),
        Container(
          height: 200,width: 200,decoration: BoxDecoration(color: Colors.white, boxShadow: [BoxShadow(
            color: Colors.grey,blurRadius: 10,spreadRadius: 5
        )],
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(30),


        ),
        ),
        Container(
          height: 200,width: 200,decoration: BoxDecoration( color: Colors.white,boxShadow: [BoxShadow(
            color: Colors.grey,blurRadius: 10,
          spreadRadius: 5
        )],
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(30),


        ),
        ),
        Container(
          height: 200,width: 200,decoration: BoxDecoration( color: Colors.white,boxShadow: [BoxShadow(
            color: Colors.grey,blurRadius: 10,
          spreadRadius: 5
        )],
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(30),


        ),
        ),
        Container(
          height: 200,width: 200,decoration: BoxDecoration( color: Colors.white,boxShadow: [BoxShadow(
            color: Colors.grey,blurRadius: 10,spreadRadius: 5
        )],
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(30),


        ),
        ), Container(
          height: 200,width: 200,decoration: BoxDecoration( color: Colors.white,boxShadow: [BoxShadow(
            color: Colors.grey,blurRadius: 10,
          spreadRadius: 5
        )],
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(30),


        ),
        )
      ],),
    ));
  }


}
