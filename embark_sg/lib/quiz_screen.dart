import 'package:embark_sg/question_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'body.dart';

import 'package:get/get.dart';

class QuizScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Questionnaire')
      ),
      body: Body(),
    );
  }

}