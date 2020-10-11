// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    this.accessToken,
    this.tokenType,
    this.expiresIn,
    this.userId,
  });

  String accessToken;
  String tokenType;
  int expiresIn;
  int userId;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    accessToken: json["access_token"],
    tokenType: json["token_type"],
    expiresIn: json["expires_in"],
    userId: json["user_id"],
  );

  Map<String, dynamic> toJson() => {
    "access_token": accessToken,
    "token_type": tokenType,
    "expires_in": expiresIn,
    "user_id": userId,
  };




}
