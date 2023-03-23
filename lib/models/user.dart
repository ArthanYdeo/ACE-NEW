import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    required this.username,
    required this.password,
    required this.studentid,
  });

  String? username;
  String? password;
  String? studentid;

  factory User.fromJson(Map<String, dynamic> json) => User(
    username: json["username"]as String?,
    password: json["password"]as String?,
    studentid: json["studentid"]as String?,
  );

  Map<String, dynamic> toJson() => {
    "username": username,
    "password": password,
    "studentid": studentid,
  };
}
