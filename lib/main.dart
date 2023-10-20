

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smartstudy/third.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main(){
  runApp(app());
}
class app extends StatelessWidget {
  const app({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: first(),debugShowCheckedModeBanner: false,);
  }
}
class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:Container(decoration: BoxDecoration(
      gradient: LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight,
          colors: [Colors.blue,Colors.white60,Colors.blue])
    ),
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 200,width: 200,child: Card(shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100)
            ),color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Image(image: AssetImage("assets/ss4.png"),),
              ),
            ),),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>second()));
          }, child: Text("start"))],
        ),
      ),
    ));
  }
}
class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> with TickerProviderStateMixin {

  final cc=CarouselController();
  final pc=PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight,
              colors: [Colors.blue,Colors.white60,Colors.blue])
      ),
      child: Column(
        children: [SizedBox(height: 80,),
          Container(height: 200,width: 420,decoration:
            BoxDecoration(color: Colors.lightBlueAccent),child:
          CarouselSlider(carouselController: cc,

            items: [
              Container(
                height: 200,width: 410,color: Colors.red,
                child: Image(fit: BoxFit.fill,image: AssetImage("assets/a1.jpg"),),
              ),
              Container(
                height: 200,width: 410,color: Colors.green,
                child: Image(fit: BoxFit.fill,image: AssetImage("assets/a2.jpg"),),
              ),
              Container(
                height: 200,width: 410,color: Colors.blue,
                child: Image(fit: BoxFit.fill,image: AssetImage("assets/a3.jpg"),),
              ),
              Container(
                height: 200,width: 410,color: Colors.grey,
                child: Image(fit: BoxFit.fill,image: AssetImage("assets/a4.jpg"),),
              )
            ], options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 2),

          ),
          ),),
          SizedBox(height: 10,),

      SmoothPageIndicator(controller: pc, count: 5,

      ),
        SizedBox(height: 40,),




        Container(height: 400,width: 400,
          child: ListView(
            children: [
              ListTile(title: Text("Ganapathi"),onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>third()));
              },),
              SizedBox(height: 20,),
              ListTile(title: Text("Aditya college of Engineering&Technology"),),
              SizedBox(height: 20,),
              ListTile(title: Text("Aditya college of Engineering"),)
            ],

        ))],
      ),
    ),);
  }
}

