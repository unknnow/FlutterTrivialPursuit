import 'Results.dart';

/// response_code : 0
/// results : [{"category":"Science & Nature","type":"boolean","difficulty":"medium","question":"Like with the Neanderthals, Homo sapiens sapiens also interbred with the Denisovans.","correct_answer":"True","incorrect_answers":["False"]},{"category":"Entertainment: Japanese Anime & Manga","type":"multiple","difficulty":"easy","question":"The name of Junko Enoshima&#039;s imposter at the beginning of Danganronpa: Trigger Happy Havoc is?","correct_answer":"Mukuro Ikusaba","incorrect_answers":["Ryota Mitarai","Ultimate Imposter","Komaru Naegi"]},{"category":"Entertainment: Film","type":"boolean","difficulty":"easy","question":"In the original Star Wars trilogy, Alec Guinness provided the voice for Darth Vader.","correct_answer":"False","incorrect_answers":["True"]},{"category":"Sports","type":"multiple","difficulty":"hard","question":"Which city features all of their professional sports teams&#039; jersey&#039;s with the same color scheme?","correct_answer":"Pittsburgh","incorrect_answers":["New York","Seattle","Tampa Bay"]},{"category":"Entertainment: Video Games","type":"multiple","difficulty":"easy","question":"In the video game &quot;Postal 2&quot;, what is the name of Postal Dude&#039;s dog?","correct_answer":"Champ","incorrect_answers":["Snoopy","Krotchy","Duke"]}]

class Question {
  Question({
    int? responseCode,
    required String date,
    List<Results>? results,
  }) {
    _responseCode = responseCode;
    _date = date;
    _results = results;
  }

  Question.fromJson(dynamic json) {
    _responseCode = json['response_code'];
    _date = json['date'];
    if (json['results'] != null) {
      _results = [];
      json['results'].forEach((v) {
        _results?.add(Results.fromJson(v));
      });
    }
  }

  int? _responseCode;
  String _date = DateTime.now().toString();
  List<Results>? _results;

  int? get responseCode => _responseCode;

  String get date => _date;

  List<Results>? get results => _results;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['response_code'] = _responseCode;
    map['date'] = _date;
    if (_results != null) {
      map['results'] = _results?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
