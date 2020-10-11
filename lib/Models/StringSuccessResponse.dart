
import 'dart:convert';


import 'dart:convert';

StringSuccessResponse stringSuccessResponseFromJson(String str) => StringSuccessResponse.fromJson(json.decode(str));

String stringSuccessResponseToJson(StringSuccessResponse data) => json.encode(data.toJson());

class StringSuccessResponse {
  StringSuccessResponse({
    this.success,
  });

  String success;

  factory StringSuccessResponse.fromJson(Map<String, dynamic> json) => StringSuccessResponse(
    success: json["success"],
  );

  Map<String, dynamic> toJson() => {
    "success": success,
  };
}
