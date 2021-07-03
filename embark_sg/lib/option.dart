import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:embark_sg/question_controller.dart';

class Option extends StatelessWidget {
  const Option({
    Key? key,
    this.text, this.index, this.press}) : super(key: key);

  final String? text;
  final int? index;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionController>(
      init: QuestionController(),
      builder: (qnController) {
        Color getTheRightColor() {
          if (qnController.isAnswered) {
            return Color.fromRGBO(150, 150, 150, 1.0);
          } else {
            return Color.fromRGBO(218, 218, 218, 1);
          }
        }

        return InkWell(
          onTap: press,
          child: Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width - 20,
            decoration: BoxDecoration(
              color: getTheRightColor(),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "$text",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(74, 74, 74, 1),
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
          )
        );
      }

    );
  }
}