import 'package:dio/dio.dart';
import 'package:flutter_api_test/repos/api_bank/model_get.dart';

class Diobank {
  Future<List<Bank>> getList() async {
    try {
      final apigetdata = await Dio().get(
        // Mock API from https://jsoning.com/api/
        'https://api.jsoning.com/mock/huuo02eitq/products',
      );
      if (apigetdata.statusCode == 200) {
        final List<dynamic> data = apigetdata.data;
        return data.map((js) => Bank.fromJson(js)).toList();
      }
      throw Exception('Error connection');
    } catch (e) {
      throw Exception('Error in: $e');
    }
  }
}
