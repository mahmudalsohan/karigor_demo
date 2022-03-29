import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:karigor_demo/app/modules/authentication/views/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: LoginView(),
    );
  }
}
