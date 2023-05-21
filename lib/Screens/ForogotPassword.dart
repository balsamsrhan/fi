
import 'package:flutter/material.dart';

import 'CreatNewPassword.dart';

class ForgotPassword extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _ForgotPassword();
  
} 
class _ForgotPassword extends State<ForgotPassword>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.only(left: 15,top: 50),
          child:Row(children: [
            CircleAvatar(
              backgroundColor: Color(0XFFD9D9D9),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back, color: Colors.black),
              ),
            ),
          ],),
          ),
          Container(
            width: 310,
            height: 70,
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 20,right: 20,top: 50),
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text("Forgot Password",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15 )),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Recover your account password",style: TextStyle(color: Color(0XFF78828A)),)
                ),



              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 30,left: 20,right: 20),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Email",
              labelText: "E-mail",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40.0)
              )
            ),
          ),
          ),
          SizedBox(
            width: 370,
            height: 90,
            child:  Padding(
              padding: EdgeInsets.only(top: 30),
              child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0)
                        )
                    )
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CreateNewPassword(),));
                },
                child: Text("Continue",style: TextStyle(color: Colors.white,fontSize: 15)),
              ),
            ),
          )



        ],
      ),
    );
  }
  
}