
import 'package:flutter/material.dart';

import 'Location.dart';
class Language extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Language();
}

class _Language extends State<Language> {
  var SelectedLanguage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 100),
            child: Text("Select your Language",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 70, right: 30, left: 30),
            child: DropdownButton(
              hint: Text("Select Languages"),

              isExpanded: true,
              items: [
                "English(UK)",
                "English",
                "Bahamas Indonesia",
                "Chinese",
                "Croatian",
                "Czech",
                "Danish",
                "Filipino",
                "Finland",
                "Arabic",
              ]
                  .map((e) => DropdownMenuItem(
                        child: Text("$e"),
                        value: e,
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  SelectedLanguage = value;
                });
              },
              value: SelectedLanguage,
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Location(),));

                  },
                  child: Text("Continue", style: TextStyle(fontSize: 18)),
                ),
              ))
        ],
      ),
    );
  }
}
