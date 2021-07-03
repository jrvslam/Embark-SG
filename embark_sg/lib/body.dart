import 'package:embark_sg/question.dart';
import 'package:embark_sg/question_card.dart';
import 'package:embark_sg/question_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: PageView.builder(
            physics: NeverScrollableScrollPhysics(),
            controller: _questionController.pageController,
            onPageChanged: _questionController.updateQnNo,
            itemCount: _questionController.questions.length,
            itemBuilder: (context, index) => QuestionCard(
                question: _questionController.questions[index]),
          ),
        )
      ],
    );
  }
}