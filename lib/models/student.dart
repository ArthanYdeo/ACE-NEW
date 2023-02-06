import 'dart:convert';

Student studentFromJson(String str) => Student.fromJson(json.decode(str));

String studentToJson(Student data) => json.encode(data.toJson());

class Student {
  Student({
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.idNum,
    required this.schoolIssuedEmail,
    required this.password,
  });

  String firstName;
  String middleName;
  String lastName;
  String idNum;
  String schoolIssuedEmail;
  String password;

  factory Student.fromJson(Map<String, dynamic> json) => Student(
    firstName: json["firstName"],
    middleName: json["middleName"],
    lastName: json["lastName"],
    idNum: json["idNum"],
    schoolIssuedEmail: json["schoolIssuedEmail"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "firstName": firstName,
    "middleName": middleName,
    "lastName": lastName,
    "idNum": idNum,
    "schoolIssuedEmail": schoolIssuedEmail,
    "password": password,
  };
}