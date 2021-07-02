class Question {
  final int? id;
  final String? question;
  final String? preemble;
  final List<String>? options;

  Question({this.id, this.question, this.preemble, this.options});
}

const List questtionaire = [
  {
    "id": 1,
    "question": "Who are you?",
    "preemble": "I am a",
    "options": ["Returning Singaporean Citizen/ Permanent Resident",
    "Foreigner"]
  }
];