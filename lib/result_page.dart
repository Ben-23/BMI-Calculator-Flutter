import 'package:bmicalculator/reusablecard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'myhomepage.dart';

class ResultPage extends StatelessWidget {
  ResultPage(this.bmi, this.result, this.desc);
  String bmi;
  String result;
  String desc;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
        //leading: Icon(Icons.sort),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Center(
              child: Text(
                'Your Results',
                style: TextStyle(fontSize: 30.0),
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    result,
                    style: TextStyle(
                        color: result == 'Normal'
                            ? Colors.greenAccent
                            : Colors.redAccent,
                        fontWeight: FontWeight.w700,
                        fontSize: 20.0),
                  ),
                  Text(bmi,
                      style: TextStyle(
                          fontWeight: FontWeight.w900, fontSize: 50.0)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      desc,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18.0),
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 80.0,
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
              ),
              //padding: EdgeInsets.all(150.0),
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.pinkAccent),
            ),
          )
        ],
      ),
    );
  }
}
