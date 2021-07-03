import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultsSG extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text('Returning Singaporean')
      ),

      body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width - 60,
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child:
              Text("Continue Prototype here on Figma!",
                textAlign: TextAlign.center,
              ),
            )
          ]

      ),
    );
  }
}