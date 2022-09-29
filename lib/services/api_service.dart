import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:logistics/view/screenhome.dart';

class Api {
  loginApi(String email, String password) async {
    final dio = Dio();
    final baseurl = 'http://185.188.127.100/WaselleApi/api/LoginDetails?';
    try {
      final responce = await dio.get(
          "${baseurl}UName=${email}&Password=${password}&UserType=Customer");
      log(responce.statusCode.toString());
      if (responce.statusCode == 200 || responce.statusCode == 201) {
        Get.snackbar("Success", "Login");
        Get.to(ScreenHome());
      }
    } on DioError catch (e) {
      log(e.error.toString());
    }
  }
}
