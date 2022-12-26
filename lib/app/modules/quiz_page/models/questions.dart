import 'package:cloud_firestore/cloud_firestore.dart';

class Questions {
  final int id, answer;
  final String question;
  List<dynamic> option;

  Questions(
      {required this.id,
      required this.answer,
      required this.question,
      required this.option,
      });

  Questions.fromSnapshot(QueryDocumentSnapshot<Map<String, dynamic>> snapshot)
      : id = snapshot['id'],
        question = snapshot['question'],
        option = [],
        answer = snapshot['answer'];

  Questions.fromJson(Map<String, Object?> json)
      : this(
            id: json['id']! as int,
            answer: json['answer']! as int,
            question: json['question']! as String,
            option: json['option']! as List);

  Map<String, Object?> toJson() {
    return {'id': id, 'answer': answer, 'question': question, 'option': option};
  }
}

const List sample_data = [
  {
    "id": 1,
    "question":
        "Flutter is an open-source UI software development kit created by ______",
    "options": ['Apple', 'Google', 'Facebook', 'Microsoft'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "When google release Flutter.",
    "options": ['Jun 2017', 'Jun 2017', 'May 2017', 'May 2018'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "A memory location that holds a single letter or number.",
    "options": ['Double', 'Int', 'Char', 'Word'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "What command do you use to output data to the screen?",
    "options": ['Cin', 'Count>>', 'Cout', 'Output>>'],
    "answer_index": 2,
  },
  {
    "id": 5,
    "question": "What command do you use to output data to the screen?",
    "options": ['Cin', 'Count>>', 'Cout', 'Output>>'],
    "answer_index": 2,
  },
];
