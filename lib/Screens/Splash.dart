
import 'package:flutter/material.dart';

import 'Login.dart';

class Splash extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_Splash();

}
class _Splash extends State<Splash>{
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2),(){
      Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
    });
return
  Scaffold(
        body: Container(
          width:  double.infinity,
          height:  double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("images/Splash Screen.png")
            )
          ),
        )
  );
  }

}