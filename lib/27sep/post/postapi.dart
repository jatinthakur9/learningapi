import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:learningapi/27sep/post/loginmodel.dart';

class postapi {
  var dio = Dio();

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
    var data = jsonDecode(response.data);
    var data2 = Loginmode.fromJson(data);

    print(data2.message);
    return data2;
  }
}
