/// id : 0
/// scsore : 0
/// pseudo : "Corentin"
/// avatar : "url"
/// games : 1

class User {
  User({
    int? id,
    int? scsore,
    String? pseudo,
    String? avatar,
    int? games,
  }) {
    _id = id;
    _scsore = scsore;
    _pseudo = pseudo;
    _avatar = avatar;
    _games = games;
  }

  User.fromJson(dynamic json) {
    _id = json['id'];
    _scsore = json['scsore'];
    _pseudo = json['pseudo'];
    _avatar = json['avatar'];
    _games = json['games'];
  }

  int? _id;
  int? _scsore;
  String? _pseudo;
  String? _avatar;
  int? _games;

  int? get id => _id;

  int? get scsore => _scsore;

  String? get pseudo => _pseudo;

  String? get avatar => _avatar;

  int? get games => _games;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['scsore'] = _scsore;
    map['pseudo'] = _pseudo;
    map['avatar'] = _avatar;
    map['games'] = _games;
    return map;
  }
}
