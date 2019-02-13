// To parse this JSON data, do
//
//     final users = usersFromJson(jsonString);

import 'dart:convert';

Users usersFromJson(String str) {
  final jsonData = json.decode(str);
  return Users.fromJson(jsonData);
}

String usersToJson(Users data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

class Users {
  int count;
  int totalCount;
  List<LeUsuario> leUsuario;

  Users({
    this.count,
    this.totalCount,
    this.leUsuario,
  });

  factory Users.fromJson(Map<String, dynamic> json) => new Users(
    count: json["count"],
    totalCount: json["total_count"],
    leUsuario: new List<LeUsuario>.from(json["le_usuario"].map((x) => LeUsuario.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "count": count,
    "total_count": totalCount,
    "le_usuario": new List<dynamic>.from(leUsuario.map((x) => x.toJson())),
  };
}

class LeUsuario {
  int id;
  String name;
  String pwdLoginApp;

  LeUsuario({
    this.id,
    this.name,
    this.pwdLoginApp,
  });

  factory LeUsuario.fromJson(Map<String, dynamic> json) => new LeUsuario(
    id: json["id"],
    name: json["name"],
    pwdLoginApp: json["pwd_login_app"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "pwd_login_app": pwdLoginApp,
  };
}
