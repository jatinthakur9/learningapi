import 'package:dio/dio.dart';

class taskapi {
  var dio = Dio();

  Future gETDATA() async {
    Response response =
        await dio.get('https://jsonplaceholder.typicode.com/todos');
    return response.data;
  }
}
