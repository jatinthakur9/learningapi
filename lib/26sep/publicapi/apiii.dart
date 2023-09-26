import 'package:dio/dio.dart';

class jpi {
  var dio = Dio();

  Future FetchDataIN() async {
    Response response = await dio.get('https://api.publicapis.org/entries');
    return response.data;
  }
}
