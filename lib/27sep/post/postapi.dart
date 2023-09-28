import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:learningapi/27sep/post/loginmodeapi2.dart';
import 'package:learningapi/27sep/post/loginmodel.dart';

class postapi {
  var dio = Dio();
  var j;

  Future getdata() async {
    Response response = await dio
        .get('https://healthkangaroo.com/index.php/api/HkVendor/userLogin');

    j = response.data;
    return j;
  }

  Future logindata(String email, String password) async {
    var formdata = FormData.fromMap({
      'emailPhone': email,
      'password': password,
    });
    Response response = await dio.post(
        'https://healthkangaroo.com/index.php/api/HkVendor/userLogin',
        data: formdata);
    var data1 = jsonDecode(response.data);
    var data2 = Loginmode.fromJson(data1);
    print(response.data);
    print(data2.message);
    return data2;
  }

  Future Mergetwoapi(String z) async {
    var formdata = FormData.fromMap({
      'vendorId': z,
    });

    Response response = await dio.post(
      'https://healthkangaroo.com/index.php/api/HkVendor/getAllgeneralLabTestPrescriptionlabTestandPackageTestApproveOrders',
      data: formdata,
    );

    var data1 = jsonDecode(response.data);

    var data2 = twoapimode.fromJson(data1);
    print(response.data);

    return data2;
  }
}
