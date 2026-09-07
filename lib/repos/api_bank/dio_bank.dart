import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_api_test/repos/api_bank/model_get.dart';

// TODO: Проверить код
class Diobank {
  Future<List<Bank>> getList() async {
    try {
      final getdata = await Dio().get(
        'https://api.jsoning.com/mock/4n2yvi18ex/products',
      );
      final Map<String, dynamic> datajs = json.decode(getdata.data);
      final List<dynamic> data = datajs['products'];
      return data.map((bk) => Bank.fromJson(bk)).toList();
    } catch (e) {
      log('Error');
      throw Exception('Чё-то жёсткое хз');
    }
  }
}
