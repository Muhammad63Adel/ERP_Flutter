import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:erp/functions/saveCurrentLogin.dart';
import 'package:erp/functions/showDialogSingleButton.dart';
import 'dart:convert';

import 'package:erp/model/loginModel.dart';

Future<LoginModel> requestLoginAPI(BuildContext context, String username, String password) async {
  final url = "https://www.server.com/CreateToken";

  Map<String, String> body = {
    'username': username,
    'password': password,
  };

  final response = await http.post(
    url,
    body: body,
  );

  if (response.statusCode == 200) {
    final responseJson = json.decode(response.body);
    var user = new LoginModel.fromJson(responseJson);

    saveCurrentLogin(responseJson);
    Navigator.of(context).pushReplacementNamed('/modules');

    return LoginModel.fromJson(responseJson);
  }
  else {
    final responseJson = json.decode(response.body);

    saveCurrentLogin(responseJson);
    showDialogSingleButton(context, "Unable to Login", "You may have supplied an invalid 'Username' / 'Password' combination. Please try again or contact your support representative.", "OK");
    return null;
  }
}

