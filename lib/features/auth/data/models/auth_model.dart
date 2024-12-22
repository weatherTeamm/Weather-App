import 'package:json_annotation/json_annotation.dart';
import 'package:weather_project/core/models/user_model.dart';
part 'auth_model.g.dart';

@JsonSerializable()
class AuthModel {
  UserModel? user;
  String password;

  AuthModel({
    this.user,
    required this.password,
  });

  Map<String, dynamic> toJson() => _$AuthModelToJson(this);
}
