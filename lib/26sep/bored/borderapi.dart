import 'package:dio/dio.dart';

class boredapi {
  var dio = Dio();
  Future BoredGet() async {
    Response response = await dio.get('https://www.boredapi.com/api/activity');

    return response.data;
  }
}
