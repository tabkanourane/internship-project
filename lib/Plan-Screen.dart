import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:perfect_body/my_flutter_app_icons.dart';
import 'package:perfect_body/rounded_button.dart';

class PlanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(13),
            child: Container(
              height: 150,
              child: Center(
                child: Text(
                  'Choose your workout PLAN ',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 25,
                  child: Text(
                    'choose your best plan and start your fit',
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 120,
          ),
          Center(
            child: Container(
              child: Column(
                children: [
                  RoundedButton(
                    text: "Full Body",
                    icon: Icon(MyFlutterApp.body_icon),
                    
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  RoundedButton(
                    text: "Butt & Leg",
                    icon: Icon(MyFlutterApp.butt_icon),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  RoundedButton(
                    text: "abs & arm",
                    icon: Icon(MyFlutterApp.lose_belly_icon),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
          ),
          Container(
              child: FlatButton(
            onPressed: () {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (context) => YourWeight()),
            //   );
            },
            child: Text(
              'Next',
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.bold,
              ),
            ),
          )),
        ],
      ),
    );
  }
}
