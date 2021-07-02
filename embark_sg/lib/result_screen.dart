import 'package:embark_sg/question_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        Center(
          child: Text('Results'),
        )
    );
  }

}