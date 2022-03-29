// To parse this JSON data, do
//
//     final loginUserModel = loginUserModelFromJson(jsonString);

import 'dart:convert';

LoginUserModel loginUserModelFromJson(String str) =>
    LoginUserModel.fromJson(json.decode(str));

String loginUserModelToJson(LoginUserModel data) => json.encode(data.toJson());

class LoginUserModel {
  LoginUserModel({
    required this.loginId,
    required this.password,
  });

  String loginId;
  String password;

  factory LoginUserModel.fromJson(Map<String, dynamic> json) => LoginUserModel(
        loginId: json["login_id"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "login_id": loginId,
        "password": password,
      };
}
