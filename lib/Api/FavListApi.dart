import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_ecommerce_app/components/AppSingUp.dart';
import 'package:flutter_ecommerce_app/utils/Urls.dart';
import 'package:http/http.dart' as http;

class FavListApi {
  Future<List> getFavList(String token, int id) async {
    String url = '${Urls.ROOT_URL}/users/$id/favouriteList';
    final response = await http.get(url, headers: {'token': token});
    var data = json.decode(response.body);
    return data;
  }

  Future<List> deleteFavList(String token, int id, int favId) async {
    String url = '${Urls.ROOT_URL}/users/$id/favouriteList/$favId';
    final response = await http.delete(url, headers: {'token': token});
    var data = json.decode(response.body);
    return data;
  }

  Future<List> addNewFavList(String token, int id) async {
    String url = '${Urls.ROOT_URL}/users/$id/favouriteList';
    final response = await http.post(url, headers: {'token': token});
    var data = json.decode(response.body);
    return data;
  }

  List<Map<String, String>> getFav() {
    return [
      {'name': 'PI', 'price': '50', 'seller': 'mans'},
      {'name': 'HDM', 'price': '100', 'seller': 'mangh'}
    ];
  }
}
