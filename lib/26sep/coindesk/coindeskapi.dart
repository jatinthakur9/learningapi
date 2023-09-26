import 'dart:convert';

import 'package:dio/dio.dart';

class Apicoin {
  var dio = Dio();

  Future GetData() async {
    Response response =
        await dio.get('https://api.coindesk.com/v1/bpi/currentprice.json');
    return jsonDecode(response.data);
  }
}
