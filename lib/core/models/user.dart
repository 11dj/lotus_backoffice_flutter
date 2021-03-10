import 'package:flutter/material.dart';

class User with ChangeNotifier {
  String id;
  String email;
  String name;
  String username;
  String updatedAt;
  String firstname;
  String lastname;
  String fcmDeviceToken;

  User() {
    _initial(username);
  }

  Future<void> _initial(String nv) async {
    print('init USER Model');
    username = nv;
  }

  User.fromJson(Map<String, dynamic> json)
      : id = json['sub'],
        email = json['email'],
        name = json['name'],
        username = json['preferred_username'],
        updatedAt = json['updated_at'],
        firstname = json['given_name'],
        lastname = json['family_name'];

  Map<String, dynamic> toJson() => {
        'sub': id,
        'name': name,
        'email': email,
        'preferred_username': username,
        'updated_at': updatedAt,
        'given_name': firstname,
        'family_name': lastname,
      };

  setFCMDeviceId(token) {
    fcmDeviceToken = token;
    notifyListeners();
  }
}
