import 'dart:convert';

import 'package:dio/dio.dart';

class postapi {
  var dio = Dio();
  var data;

  Future getdata() async {
    Response response = await dio
        .get('https://healthkangaroo.com/index.php/api/HkVendor/userLogin');

    return response.data;
  }

  Future logindata(String email, String password) async {
    var formdata = FormData.fromMap({
      'emailPhone': email,
      'password': password,
    });
    Response response = await dio.post(
        'https://healthkangaroo.com/index.php/api/HkVendor/userLogin',
        data: formdata);

    data = jsonDecode(response.data);
    print(data);

    return data;
  }
}
