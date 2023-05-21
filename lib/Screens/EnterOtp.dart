
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'ForogotPassword.dart';

class EnterOtp extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>_EnterOtp();

}
class _EnterOtp extends State<EnterOtp>{
  TextEditingController number1 =TextEditingController();
  TextEditingController number2 =TextEditingController();
  TextEditingController number3 =TextEditingController();
  TextEditingController number4 =TextEditingController();
  TextEditingController number5 =TextEditingController();
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      padding: EdgeInsets.only(top: 50,left: 20,right: 20),
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          Row(children: [
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
          Container(
            width: 307,
            height: 84,
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 30,right: 30,top: 50),
            child: Column(
              children: [
                Text("Enter OTP",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
                Padding(
                    padding: EdgeInsets.only(top: 15,left: 5,right: 5),
                child: Text("We have just sent you 4 digit code via your",style: TextStyle(color: Color(0XFF6C6C6C))),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 3,left: 10,right: 10),
                  child: Text("email example@example.com",style: TextStyle(color: Color(0XFF6C6C6C))),
                ),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 40),
          child: Form(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 56,
                    height: 56,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "0",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)
                          )
                      ),
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.number,
                      inputFormatters: [LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      onChanged: (value) {
                        if(value.length == 1){
                          FocusScope.of(context).nextFocus();
                        }
                      },

                    ),
                  ),
                  SizedBox(
                    width: 56,
                    height: 56,
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "0",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)
                          )
                      ),
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.number,
                      inputFormatters: [LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      onChanged: (value) {
                        if(value.length == 1){
                          FocusScope.of(context).nextFocus();
                        }
                      },

                    ),
                  ),
                  SizedBox(
                    width: 56,
                    height: 56,
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "0",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)
                          )
                      ),
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.number,
                      inputFormatters: [LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      onChanged: (value) {
                        if(value.length == 1){
                          FocusScope.of(context).nextFocus();
                        }
                      },

                    ),
                  ),
                  SizedBox(
                    width: 56,
                    height: 56,
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "0",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)
                          )
                      ),
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.number,
                      inputFormatters: [LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      onChanged: (value) {
                        if(value.length == 1){
                          FocusScope.of(context).nextFocus();
                        }
                      },

                    ),
                  )
                ],
              )
          )
          ),
          Padding(
              padding: EdgeInsets.only(left: 15,right: 15,top: 35),
            child: SizedBox(
              width: 400,
              height: 56,
              child: ElevatedButton(
                child: Text("Continue"),
                onPressed: (){
                    //Navigator.push(context, MaterialPageRoute(
                     // builder: (context) => SignIn(),));
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => ForgotPassword(),));

                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0)
                    )
                  ),
                ),
              ),
            ),

          ),
          Padding(
              padding:EdgeInsets.only(top: 15),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Didn't receive code?",style: TextStyle(color: Color(0XFF6C6C6C))),
                  TextButton(onPressed: () {

                    Navigator.push(context, MaterialPageRoute(builder: (context) => EnterOtp(),));

                  }, child: Text(" Resend Code"))
                ],
              )

          )


        ],
      ),
    ),




  );
  }

}