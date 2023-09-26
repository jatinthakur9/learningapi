import 'package:dio/dio.dart';

class Api {
  var dio = Dio();

  Future GetData() async {
    Response response = await dio.get('https://catfact.ninja/fact');
    return response.data;
  }
}
