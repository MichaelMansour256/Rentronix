import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_ecommerce_app/components/AppSingUp.dart';
import 'package:flutter_ecommerce_app/utils/Urls.dart';
import 'package:http/http.dart' as http;

class ProfileApi {
  Future<String> getWallet(String token, int id) async {
    String url = '${Urls.ROOT_URL}/users/wallet/$id';
    final response = await http.get(url, headers: {'token': token});
    var data = json.decode(response.body);
    return data['customer_wallet'];
  }
}
