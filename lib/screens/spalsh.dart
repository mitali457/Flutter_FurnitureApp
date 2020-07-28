import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }
  startTime() async {
    var _duration = Duration(seconds: 4);
     Timer(_duration, 
     () => Navigator.of(context).pushReplacementNamed("/home")
            );
  }
  void navigationPage() async {
    print('Welcom to splash screen');
  }

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
          body: Center(
        child: Stack(
          children: [
             Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                //color: Colors.blue[700],
            image: DecorationImage(
              image: NetworkImage("https://www.magazijnshopper.nl/pub/media/catalog/product/cache/74c1057f7991b4edb2bc7bdaa94de933/k/i/kick-fauteuil-velvet-billy-groen-sv_1.jpg"),
               fit: BoxFit.fill
               ),
          )),
          Padding(
            padding: const EdgeInsets.only(top:400,left: 150),
            child: Text("Furniture App", style: TextStyle(fontSize:26,
            decoration: TextDecoration.none,
                        color:Colors.white,
                        fontWeight:FontWeight.bold),),
          )
          ]),
      ),
    );
  }
}