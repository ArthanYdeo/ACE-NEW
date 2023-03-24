import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    required this.fullname,
    required this.password,
    required this.studentid,
    required this.email,
    required this.age,
    required this.dept,
    required this.gender,
  });

  String? fullname;
  String? password;
  String? studentid;
  String? email;
  String? age;
  String? dept;
  String? gender;


  factory User.fromJson(Map<String, dynamic> json) => User(
    fullname: json["fullname"]as String?,
    password: json["password"]as String?,
    studentid: json["studentid"]as String?,
    email: json["email"]as String?,
    age: json["age"] as String?,
    dept: json["department"] as String?,
    gender: json ["gender"] as String?,
  );

  Map<String, dynamic> toJson() => {
    "fullname": fullname,
    "password": password,
    "studentid": studentid,
    "email" : email,
    "age": age,
    "department" : dept,
    "gender": gender,
  };
}
