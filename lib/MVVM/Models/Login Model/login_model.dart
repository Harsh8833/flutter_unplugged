import 'dart:convert';

LoginModel loginModelFromJson(String str) =>
    LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  LoginModel({
    required this.email,
    required this.role,
    required this.name,
  });

  final String? email;
  final String? role;
  final String? name;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        email: json["email"],
        role: json["role"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "role": role,
        "name": name,
      };
}
