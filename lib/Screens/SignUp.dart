
import 'package:flutter/material.dart';
import 'EnterOtp.dart';
import 'Login.dart';

class SignUp extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>_SignUp();

}
class _SignUp extends State<SignUp>{
  TextEditingController First_Name = TextEditingController();
  TextEditingController Last_Name = TextEditingController();
  TextEditingController Email = TextEditingController();
  TextEditingController Password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
              padding: EdgeInsets.only(top: 30,left: 15),
            child: ListTile(
              title: Text("Sign UP",style: TextStyle(fontWeight: FontWeight.bold)),
              leading: CircleAvatar(
                  backgroundColor: Color(0XFFD9D9D9),
                  child: IconButton(
                onPressed: (){
                  Navigator.pop(context,true);

                },
                icon: Icon(Icons.arrow_back),
              )),
            )

          ),
          Container(
            width: 264,
            height: 62,
            margin: EdgeInsets.only(left: 40,right: 40,top: 20),
            alignment: Alignment.center,
            child: Text("Complete your account",style: TextStyle(fontSize: 20)),
          ),
          Container(
            width: 327,
            height: 554,
            margin: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.only(top: 10),
                  child: TextField(
                    controller: First_Name,
                    decoration: InputDecoration(
                      hintText: "Enter your first name",
                      labelText: "First Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40.0)
                      )

                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: TextField(
                    controller: Last_Name,
                    decoration: InputDecoration(
                        hintText: "Enter your last name",
                        labelText: "Last Name",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40.0)
                        )

                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: TextField(
                    controller: Email,
                    decoration: InputDecoration(
                        hintText: "Enter your email",
                        labelText: "E-mail",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40.0)
                        )

                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: TextField(
                    controller: Password,
                    decoration: InputDecoration(
                        hintText: "Enter your password",
                        labelText: "Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40.0)
                        )

                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: TextField(
                    controller: Password,
                    decoration: InputDecoration(
                        hintText: "Enter your password",
                        labelText: "Confirm password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40.0)
                        )

                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25),
                  child:SizedBox(
                  width: 390,
                  height: 56,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0)
                        )
                      )
                    ),
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => EnterOtp(),));
                    },
                    child: Text("Sign Up",style: TextStyle(color: Colors.white,fontSize: 15)),
                  )
    )
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already have an account?",style: TextStyle(color: Color(0XFF8E8E8E))),
              TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));

              }, child: Text("Login"))
            ],
          )
        ],
      ),
    );
  }

}