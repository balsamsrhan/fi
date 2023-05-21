import 'package:flutter/material.dart';

import 'CreateAccount.dart';
import 'Home.dart';
class SignIn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignIn();
}

class _SignIn extends State<SignIn> {
  bool CheckFlag = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.5,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Scaffold(
        body: ListView(
          children: [
            ListTile(
              contentPadding: EdgeInsets.only(top: 20, left: 20),
              title: Text("Sign In", style: TextStyle(fontSize: 15)),
              leading: CircleAvatar(
                backgroundColor: Color(0XFFD9D9D9),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back, color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: SizedBox(
                width: 340,
                height: 220,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Enter your email address",
                            labelText: "Email",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40.0))),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 25,right: 5.0,left: 5.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Enter your password",
                          labelText: "Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40.0)
                          )
                        ),
                      ),

                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Checkbox(
                            value: CheckFlag,
                            onChanged: (value) {
                              setState(() {
                                CheckFlag = value !;
                              });
                            },),

                        Text("Remember Me"),
                        Row(
                          children: [
                            Text("Forgot Password",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
                          ],
                        )
                        
                      ],
                    ),
                    
                  ],
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 22.0),
              child:  SizedBox(
                width: 327,
                height: 56,
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0)
                            )
                        )
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));
                    },
                    child:Center(
                      child: Text("Sign In",style: TextStyle(fontSize: 15)),
                    )
                ),
              ),

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
                padding:EdgeInsets.only(top: 50),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?",style: TextStyle(color: Color(0XFF8E8E8E))),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CreateAccount(),));

                    }, child: Text("Sign Up !"))
                  ],
                )

            )

          ],
        ),
      ),
    );
  }
}
