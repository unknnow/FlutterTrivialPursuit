import 'dart:convert';
import 'package:fluttertrivialp/data/entities/Question.dart';
import 'package:fluttertrivialp/data/entities/Results.dart';
import 'package:http/http.dart' as http;

class QuestionApi {
  final String _baseUrl = "opentdb.com";

  static QuestionApi? _instance;

  static getInstance() {
    _instance ??= QuestionApi._();
    return _instance;
  }

  QuestionApi._();

  Future<List<Results>> getQuestionOfTheDay() async {
    final queryParameters = {'amount': '10'};
    final uri = Uri.https(_baseUrl, '/api.php', queryParameters);

    final response = await http.get(uri);
    if (response.statusCode == 200) {
      Question questionApiResponse =
          Question.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));

      return questionApiResponse.results!;
    } else {
      throw Exception("Failed to load words");
    }
  }
}
