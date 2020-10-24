import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_ecommerce_app/components/AppSingUp.dart';
import 'package:flutter_ecommerce_app/utils/Urls.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LoginApi {
  Future<void> loginWithFacebook() async {
    String url = '${Urls.ROOT_URL}/auth/facebook';
    final response = await http.post(url, body: {
      'client_id': '1',
      'client_secret': 'qpBx9foSSvEoPfmWrESkwRt3Z4p9LPo8KkXQOalN',
      'user_id': '2690312317874170',
      'access_token':
          'EAADc1wadlV4BANIykvbge1ZCeMZA4ZAYcbNcHiTjSoXxmYD7EEeAMpSasn1yWIej2Jqdg5obQoDAATsAzHr2IsXZAgGTS4R5NNkVy0xWwSsuFBf02ZAaucLklvtrA8dDdIkXgl3EatZAM1IHNnlf1skRfvggRRfthADCErimzhskgQaHoRehH9iLofUSXTnoaIs4PZBEhx3ZCY4vzErV43LWHxJETmbqvaIXxBbCVNGZAhQZDZD'
    });
    var status = response.body.contains('error');

    var data = json.decode(response.body);

    if (status) {
      //print('data : ${data["error"]}');
    } else {
      print('data : ${data["token"]}');
      _save(data["token"]);
    }
  }

  void _save(String token) async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = token;
    prefs.setString(key, value);
  }

  read() async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = prefs.get(key) ?? 0;
    print('read : $value');
  }
}
