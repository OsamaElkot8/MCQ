import 'package:json_annotation/json_annotation.dart';
import 'package:mcq/repository/local/dummy/dummy_constants.dart';

part 'question.g.dart';

@JsonSerializable()
class Question {
  String question;
  List<String> choices;
  @JsonKey(name: DummyConstants.keyCorrectAnswer)
  String correctAnswer;

  Question(
      {required this.question,
      required this.choices,
      required this.correctAnswer});

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
  Map<String, dynamic> toJson() => _$QuestionToJson(this);
}
