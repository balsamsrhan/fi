import 'package:flutter/material.dart';

import 'Home.dart';
class Location extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_Location();

}
class _Location extends State<Location> {
  var SelectedLocations;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 100),
            child: Text("Select your Locations",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 70, right: 30, left: 30),
            child: DropdownButton(
              hint: Text("Select Locations"),

              isExpanded: true,
              items: [
                "Fairbanks, Alaska",
                "Indianapolis, Indiana",
                "Attoweber, Massachusetts",
                "Burlington, Vermont",
                "Queens, New York",
                "Billings, Montana",
                "Chattanooga, Tennessee",
                "Wentworth, South Dakota",
                "White Plains, New York",
                "Worland, Wyoming",
              ]
                  .map((e) => DropdownMenuItem(
                child: Text("$e"),
                value: e,
              ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  SelectedLocations = value;
                });
              },
              value: SelectedLocations,
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 400),
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: 327,
                height: 56,
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.0)))),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));

                  },
                  child: Text("Continue", style: TextStyle(fontSize: 18)),
                ),
              ))
        ],
      ),
    );
  }
}