import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:karigor_demo/app/core/models/login_user_model.dart';
import 'package:karigor_demo/app/core/services/api_service.dart';
import 'package:karigor_demo/app/modules/home/views/home_view.dart';

class LoginController extends GetxController {
  late final TextEditingController userIdController;
  late final TextEditingController passwordController;

  @override
  void onInit() {
    userIdController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  authenticate() {
    LoginUserModel model = LoginUserModel(
      loginId: userIdController.text,
      password: passwordController.text,
    );

    Api().login(model).then((response) {
      if (response) {
        Get.to(() => const HomeView());
      }
    });
  }
}
