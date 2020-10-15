import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_ecommerce_app/components/AppSingUp.dart';
import 'package:flutter_ecommerce_app/utils/Urls.dart';
import 'package:http/http.dart' as http;

class OrdersApi {
  Future<List> getOrder(String token, int id) async {
    String url = '${Urls.ROOT_URL}/orders/$id';
    final response = await http.get(url, headers: {'token': token});
    var data = json.decode(response.body);
    return data;
  }

  Future<List> getOrders(String token) async {
    String url = '${Urls.ROOT_URL}/orders';
    final response = await http.get(url, headers: {'token': token});
    var data = json.decode(response.body);
    return data;
  }

  Future<List> addOrder(String token, int id) async {
    String url = '${Urls.ROOT_URL}/orders/$id';
    final response = await http.post(url, headers: {'token': token});
    var data = json.decode(response.body);
    return data;
  }

  Future<List> deleteOrder(String token, int id) async {
    String url = '${Urls.ROOT_URL}/orders/$id';
    final response = await http.delete(url, headers: {'token': token});
    var data = json.decode(response.body);
    return data;
  }

  Future<List> editOrder(String token, int id) async {
    String url = '${Urls.ROOT_URL}/orders/$id';
    final response = await http.put(url, headers: {'token': token});
    var data = json.decode(response.body);
    return data;
  }

  List<Map<String, String>> getOrdersFake() {
    return [
      {'name': 'PI', 'price': '50', 'seller': 'mans', 'status': 'shipped'},
      {'name': 'HDM', 'price': '100', 'seller': 'mangh', 'status': 'received'}
    ];
  }
}
