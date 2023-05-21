import 'package:flutter/material.dart';

class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  State<Home1> createState() => _HomeState();
}

class _HomeState extends State<Home1> {
  double num = 6.000;
  double num1 = 8.000;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(15),
            width: 200,
            height: 48,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 48,
                  height: 48,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("images/person.png"),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Text("Hi,Adam",
                          style: TextStyle(color: Colors.black, fontSize: 14)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5, left: 15),
                      child: Text("UI/UX Designer",
                          style: TextStyle(color: Color(0XFF78828A))),
                    )
                  ],
                ),
                Spacer(),
                Padding(
                    padding: EdgeInsets.only(right: 8),
                    child: SizedBox(
                      width: 48,
                      height: 48,
                      child: CircleAvatar(
                        child: Icon(Icons.notifications_sharp),
                        //backgroundImage: AssetImage("images/person.png"),
                      ),
                    )),
                SizedBox(
                  width: 48,
                  height: 48,
                  child: CircleAvatar(
                    child: Icon(Icons.messenger),
                    // backgroundImage: AssetImage("images/person.png"),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: ListTile(
              title: Text("Search"),
              leading: Icon(Icons.search),
            ),
          ),
          Container(
            width: 340,
            height: 162,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("images/card.png"))),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: ListTile(
              leading: Text(
                "Featured Jobs",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Text("View All"),
            ),
          ),
          
        ],
      ),
    );
  }
}
