import 'dart:developer';

import 'package:dio/dio.dart';

class Diobank{
  Future<List<dynamic>> getList() async{
    final getdata = await Dio().get('https://api.jsoning.com/mock/4n2yvi18ex/products');
    final data = getdata.data['products'];
    log(data);
    return data;
  }
}