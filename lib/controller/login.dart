import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:logistics/services/api_service.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formkey = GlobalKey<FormState>();

  void login() {
    if (formkey.currentState!.validate()) {
      Api().loginApi(emailController.text, passwordController.text);
    }
  }
}
