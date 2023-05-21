import 'package:flutter/material.dart';

import 'Login.dart';
import 'SignUp.dart';
class CreateAccount extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CreateAccount();
}

class _CreateAccount extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF32A4C8),
      body: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(80),
            width: 223,
            height: 26,
            child: Text("Create account",
                style: TextStyle(
                  color: Colors.white,
                  wordSpacing: 3,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                )),
          ),
          Container(
            width: 375,
            height: 640,
            padding: EdgeInsets.only(right: 30, left: 30),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(35), right: Radius.circular(35))),
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 100),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Enter your email address",
                        labelText: "Email",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40.0))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40.0),
                  child: SizedBox(
                      width: 327,
                      height: 56,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(40.0)))),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp(),));

                        },
                        child: Text("Continue with Email"),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child:
                            Divider(color: Color(0XFF6C6C6C), thickness: 1.0),
                        flex: 1,
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Expanded(
                            flex: 1,
                            child: Text("Or continue with",
                                style: TextStyle(color: Color(0XFF6C6C6C))),
                          )),
                      Expanded(
                        child:
                            Divider(color: Color(0XFF6C6C6C), thickness: 1.0),
                        flex: 1,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Container(
                    width: 327,
                    height: 128,
                    child: Column(
                      children: [
                        SizedBox(
                          width: 327,
                          height: 60,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0),
                                side: BorderSide(color: Colors.black)),
                            child: ListTile(
                              title: Text("Continue with Google"),
                              leading:
                                  Image(image: AssetImage("images/google.png")),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: SizedBox(
                            width: 327,
                            height: 60,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40.0),
                                  side: BorderSide(color: Colors.black)),
                              child: ListTile(
                                title: Text("Continue with Apple"),
                                leading: Image(
                                    image: AssetImage("images/apple.png")),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account?",style: TextStyle(color: Color(0XFF8E8E8E))),
                        TextButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));

                        }, child: Text("Login"))
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
