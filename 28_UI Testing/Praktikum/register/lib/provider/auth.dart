import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier {
  void signup(String email, String password) async {
    Uri url = Uri.parse(
        "https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyB3F_YZIEuhSqgJyP-3X78E26PZh5H-Ies");
    var response = await http.post(
      url,
      body: json.encode({
        "email": email,
        "password": password,
      }),
    );
    print(
      json.decode(response.body),
    );
  }
}
