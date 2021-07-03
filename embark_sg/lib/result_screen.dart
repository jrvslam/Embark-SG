import 'package:embark_sg/question_controller.dart';
import 'package:embark_sg/results.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:get/get.dart';

class ResultScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Moving to Singapore'),
      ),
      body:
        ListView(
          children: [
            Column(
              children: [
                ResultCard(),
                WhatYouNeedCard(),
                Text('Results'),
                Text("${_qnController.person.questionPath[0]}"),
                Text("${_qnController.person.questionPath[1]}"),
                Text("${_qnController.person.questionPath[2]}"),
                Text("${_qnController.person.questionPath[3]}"),
                Text("${_qnController.person.questionPath[4]}"),
                Text("${_qnController.person.questionPath[5]}"),
              ],
          ),]
        )
    );
  }
}

class WhatYouNeedCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    Results res = Results.parseRes(_qnController.person.questionPath);

    return Row(
        children:[
          Container(
            width: MediaQuery.of(context).size.width - 40,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),

          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child:
                Text("What you need",
                  textAlign: TextAlign.center,
                    style: GoogleFonts.nunito(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 24
                        )
                    )
                ),
              ),
            SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Here’s what you need to embark on your journey",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'Nunito'
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(20),
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(218, 218, 218, 1),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                        ),

                        child: Text("1",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.nunito(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w700
                            )
                          )
                        ),
                      ),
                      Expanded(
                          child: Text(
                            "${res.visa}",
                              style: GoogleFonts.nunito(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20
                                  )
                              )
                          )
                      ),
                      Container(
                        width: 30,
                        height: 30,
                        child: Icon(
                            Icons.keyboard_arrow_down
                        ),
                      )

                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(20),
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(218, 218, 218, 1),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),

                        child: Text("2",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.nunito(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w700
                                )
                            )
                        ),
                      ),
                      Expanded(
                          child: Text(
                            "${res.covid}",
                              style: GoogleFonts.nunito(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20
                                  )
                              )
                          )
                      ),
                      Container(
                        width: 30,
                        height: 30,
                        child: Icon(
                            Icons.keyboard_arrow_down
                        ),
                      )

                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(20),
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(218, 218, 218, 1),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),

                        child: Text("3",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.nunito(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w700
                                )
                            )
                        ),
                      ),
                      Expanded(
                          child: Text(
                            "${res.sc}",
                              style: GoogleFonts.nunito(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20
                                  )
                              )
                          )
                      ),
                      Container(
                        width: 30,
                        height: 30,
                        child: Icon(
                            Icons.keyboard_arrow_down
                        ),
                      )

                    ],
                  ),
                )
              ]
            )
            ],


          ),
          )
        ]
    );

  }

}

class ResultCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    Results res = Results.parseRes(_qnController.person.questionPath);

    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width - 40,
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(20),
          decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),

          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child:
                  Text("Who are you",
                    textAlign: TextAlign.center,
                      style: GoogleFonts.nunito(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 24
                          )
                      )
                ),
              ),

              SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Based on the information you’ve keyed in, you are:",
                      textAlign: TextAlign.left,
                        style: GoogleFonts.nunito(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                              fontStyle: FontStyle.italic
                            )
                        )
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "  - ${res.nationality}",
                        style: GoogleFonts.nunito(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                            )
                        )
                    )
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "  - ${res.related}",
                          style: GoogleFonts.nunito(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                              )
                          )
                      )
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "  - ${res.purpose}",
                          style: GoogleFonts.nunito(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                              )
                          )
                      )
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "     - ${res.duration}",
                          style: GoogleFonts.nunito(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                fontStyle: FontStyle.italic
                              )
                          )
                      )
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "     - ${res.income}",
                          style: GoogleFonts.nunito(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  fontStyle: FontStyle.italic
                              )
                          )
                      )
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "  - ${res.pr}",
                          style: GoogleFonts.nunito(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                              )
                          )
                      )
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ],
          ),
        )

      ],
    );
  }

}