import 'package:flutter/material.dart';

import 'Language.dart';

class CreateNewPassword extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_CreateNewPassword();

}
class _CreateNewPassword extends State<CreateNewPassword>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: ListView(
       children: [
         Padding(
           padding: EdgeInsets.only(left: 15,top: 30),
           child:Row(children: [
             CircleAvatar(
               backgroundColor: Color(0XFFD9D9D9),
               child: IconButton(
                 onPressed: () {Navigator.pop(context);},
                 icon: Icon(Icons.arrow_back, color: Colors.black),
               ),
             ),
           ],),
         ),
         Container(
           width: 307,
           height: 100,
           alignment: Alignment.center,
           margin: EdgeInsets.only(top: 30,left: 20,right: 20),
           padding: EdgeInsets.all(8.0),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text("Create a",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
               Text("New Password",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
               Text("Enter your new password",style: TextStyle(color: Color(0XFF78828A)))

             ],
           ),
         ),
         Container(
           margin: EdgeInsets.only(left: 15,right: 15,top: 25),
           width: 347,
           height: 188,
           child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Padding(
                   padding: EdgeInsets.only(top: 30),
                 child: TextField(
                   decoration: InputDecoration(
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(40.0)
                     ),
                     hintText: "Enter New Password",
                       hintStyle: TextStyle(color: Color(0XFF9CA4AB)),
                     labelText: "New Password",
                     labelStyle: TextStyle(color: Color(0XFF9CA4AB)),
                   ),
                 ),
               ),
               Padding(
                 padding: EdgeInsets.only(),
                 child: TextField(
                   decoration: InputDecoration(
                       border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(40.0)
                       ),
                       hintText: "Confirm New Password",
                       hintStyle: TextStyle(color: Color(0XFF9CA4AB)),
                       labelText: "Confirm Password",
                        labelStyle: TextStyle(color: Color(0XFF9CA4AB)),
                   ),
                 ),
               ),
             ],
           ),

         ),
         Padding(
             padding: EdgeInsets.only(top: 20,left: 25,right: 25),
           child: SizedBox(
             width: 327,
             height: 60,
               child: ElevatedButton(
                 style: ButtonStyle(
                     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                         RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(40.0)
                         )
                     )
                 ),
                 onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Language(),));
                 },
                 child: Text("Continue",style: TextStyle(color: Colors.white,fontSize: 18)),
               ),
             ),
           ),

       ],
     ),
   );
  }

}