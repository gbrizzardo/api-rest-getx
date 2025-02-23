// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:application/model/user_type.dart';

class UserModel {
  int? id;
  String? name;
  String? username;
  List<UserType>? types;

  UserModel({
    this.id,
    this.name,
    this.username,
    this.types,
  });

  // transform User Model to Map<String, dynamic>
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'username': username,
      'user_type': types?.map((x) => x.toMap()).toList(),
    };
  }

  // transform Map to User Model
  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] != null ? map['id'] as int : null,
      name: map['name'] != null ? map['name'] as String : null,
      username: map['username'] != null ? map['username'] as String : null,
      types: map['user_type'] != null
          ? List<UserType>.from(
              (map['user_type'] as List<int>).map<UserType?>(
                (x) => UserType.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
    );
  }

  // transform a map to Json
  String toJson() => json.encode(toMap());

  // transform String to Map
  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
