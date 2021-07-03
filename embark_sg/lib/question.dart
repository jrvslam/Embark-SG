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
  },
  {
    "id": 2,
    "question": "What is your relationship to a Singapore Citizen/ Permanent Resident?",
    "preemble": "I am his/ her",
    "options": ["Parent",
      "Spouse",
      "Child",
      "I do not have an existing relationship"]
  },
  {
    "id": 3,
    "question": "What is your purpose of stay?",
    "preemble": "I am here primarily for",
    "options": ["Leisure",
      "Work",
      "Study",
      "Family",
      "Mother/ Grandmother accompanying Student Pass holder"]
  },
  {
    "id": 3,
    "question": "What is your purpose of stay?",
    "preemble": "I am here primarily for",
    "options": ["Leisure",
      "Work",
      "Study",
      "Mother/ Grandmother accompanying Student Pass holder"]
  },
  {
    "id": 4,
    "question": "How long will you be staying for?",
    "preemble": "I am staying for",
    "options": ["Less than 2 months",
      "Less than 2 years",
      "More than 2 years"]
  },
  {
    "id": 5,
    "question": "What is your income level?",
    "preemble": "My income falls within",
    "options": ["Less than SGD2,500 per month",
      "Less than SGD4,500 per month",
      "More than SGD4,500 per month",
      "Intention to start a business"]
  },
  {
    "id": 6,
    "question": "Do you intend to become a Singaporean Citizen/ Permanant Resident?",
    "preemble": "   ",
    "options": ["Yes",
      "No",]
  },
];