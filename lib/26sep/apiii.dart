import 'package:dio/dio.dart';

class Api {
  var dio = Dio();
  String url = 'https://api.publicapis.org/entries';
  var data;

  Future getData() async {
    Response response = await dio.get(url);
    print(response.data.runtimeType);

    data = response.data;
    print(data);

    return data;
  }
}
