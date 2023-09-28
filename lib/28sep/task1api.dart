import 'package:dio/dio.dart';

class api {
  var dio = Dio();

  Future Sendname(String name, String job) async {
    /*  var formdata = FormData.fromMap({
      "name": name,
      "job": job,
    });*/

    Map Rawdata = {
      "name": name,
      "job": job,
    };

    Response response = await dio.post(
      'https://reqres.in/api/users',
      data: Rawdata,
    );

    print(response.data);
    return response.data;
  }
}
