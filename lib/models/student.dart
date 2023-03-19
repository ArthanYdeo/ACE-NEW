import 'dart:convert';

Student studentFromJson(String str) => Student.fromJson(json.decode(str));

String studentToJson(Student data) => json.encode(data.toJson());

class Student {
  Student({
    required this.fullName,
    required this.idNum,
    required this.email,
    required this.password,
  });

  String fullName;
  String idNum;
  String email;
  String password;

  factory Student.fromJson(Map<String, dynamic> json) => Student(
    fullName: json["firstName"],
    idNum: json["idNum"],
    email: json["email"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "firstName": fullName,
    "idNum": idNum,
    "email": email,
    "password": password,
  };
}