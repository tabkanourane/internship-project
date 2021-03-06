import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:perfect_body/Plan-Screen.dart';

class ResultScreen extends StatelessWidget {
  final bmiModel;

  ResultScreen({this.bmiModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 200,
            width: 200,
            child: bmiModel.isNormal
                ? SvgPicture.asset(
                    "assets/happy.svg",
                    fit: BoxFit.contain,
                  )
                : SvgPicture.asset(
                    "assets/sad.svg",
                    fit: BoxFit.contain,
                  ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Your BMI is ${bmiModel.bmi.round()}",
            style: TextStyle(
                color: Colors.blue[700],
                fontSize: 34,
                fontWeight: FontWeight.w700),
          ),
          Text(
            "${bmiModel.comments}",
            style: TextStyle(
                color: Colors.grey[700],
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 16,
          ),
          bmiModel.isNormal
              ? Text(
                  "Hurray! Your BMI is Normal.",
                  style: TextStyle(
                      color: Colors.blue[700],
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                )
              : Text(
                  "Sadly! Your BMI is not Normal.",
                  style: TextStyle(
                      color: Colors.blue[700],
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
          SizedBox(
            height: 16,
          ),
          Container(
            child: FlatButton.icon(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PlanScreen()));
              },
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
              label: Text("Start your Workout Now"),
              textColor: Colors.white,
              color: Colors.blue,
            ),
            width: double.infinity,
            padding: EdgeInsets.only(left: 16, right: 16),
          )
        ],
      ),
    ));
  }
}
