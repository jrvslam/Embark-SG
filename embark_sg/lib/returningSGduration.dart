import 'package:embark_sg/question_controller.dart';
import 'package:embark_sg/resultsSG.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class _ReturningSGMonthScreen extends State<ReturningFormState> {

  final textController = TextEditingController();

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());

    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text('Questionnaire')
      ),
      body: Row(
          mainAxisSize: MainAxisSize.max,
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

            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "How many months have you been away?",
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w800,
                    fontSize: 20
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("I have been away for",
                          style: GoogleFonts.nunito(
                              fontWeight: FontWeight.w300,
                              fontStyle: FontStyle.italic,
                              fontSize: 16
                          )
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: TextField(
                          controller: textController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'No. of Months',
                            hintStyle: GoogleFonts.nunito(
                              textStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                fontStyle: FontStyle.italic
                              )
                            )
                          ),
                        keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                      )
                    ),

                  ]
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child:
                    ElevatedButton(
                      child: Text('Next'),
                      onPressed: () {
                        print('Click Received: Next' + textController.text);
                        Get.to(ResultsSG());
                      }
                  )
                )
                  ],
                )
            )
          ],
      )
    );
  }

}

class ReturningFormState extends StatefulWidget {

  @override
  _ReturningSGMonthScreen createState() => _ReturningSGMonthScreen();

}