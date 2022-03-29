import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:karigor_demo/app/modules/authentication/controllers/login_controllers.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put<LoginController>(LoginController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(children: [
          const SizedBox(height: 50),
          TextField(
            decoration: const InputDecoration(labelText: 'User ID'),
            controller: controller.userIdController,
          ),
          TextField(
            decoration: const InputDecoration(labelText: 'Password'),
            controller: controller.passwordController,
          ),
          const SizedBox(height: 50),
          ElevatedButton(
              onPressed: () {
                controller.authenticate();
              },
              child: const Center(
                child: Text('Login'),
              ))
        ]),
      ),
    );
  }
}
