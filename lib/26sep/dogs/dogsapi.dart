import 'package:dio/dio.dart';

class dogapi {
  var dio = Dio();

  Future fetchimage() async {
    Response response =
        await dio.get('https://dog.ceo/api/breeds/image/random');

    return response.data;
  }
}
