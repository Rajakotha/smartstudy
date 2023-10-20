import 'package:flutter/material.dart';


class third extends StatefulWidget {
  const third({super.key});

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Color(0xFF2d28b8),title: Text("Departments"),),body:Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight,
              colors: [Colors.blue,Colors.white60,Colors.blue])
      ),
      child: ListView(children: [
        ListTile(title: Text("Computer Science\n Engineering"),onTap: (){},),
        Divider(color: Color(0xff2d28b8),thickness: 1,),
        ListTile(title: Text("Electronic&Communication\n Engineering"),),
        Divider(color: Color(0xff2d28b8),thickness: 1,),
        ListTile(title: Text("Electronics&Electrical\n Engineering"),),
        Divider(color: Color(0xff2d28b8),thickness: 1,),
        ListTile(title: Text("Mechanical\n Engineering"),),
        Divider(color: Color(0xff2d28b8),thickness: 1,),
        ListTile(title: Text("Civil\n Engineering"),),
        Divider(color: Color(0xff2d28b8),thickness: 1,),
        ListTile(title: Text("Information\n Technology"),),
        Divider(color: Color(0xff2d28b8),thickness: 1,),
      ],),
    ));
  }


}
