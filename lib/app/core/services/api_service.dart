import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:karigor_demo/app/core/models/login_user_model.dart';

class Api {
  final Dio api = Dio();
  Api() {
    api.interceptors.add(
      InterceptorsWrapper(onRequest: (options, handler) {
        print(options.path);
        print(options.data);
        return handler.next(options);
      },
          //
          //
          onError: (DioError error, handler) async {
        return handler.next(error);
      }),
    );
  }

  //login
  Future<bool> login(LoginUserModel model) async {
    Map<String, String> requestHeaders = {
      'Content-Type': 'application/json',
    };

    var response = await api.post(
      'http://3.110.10.31/api/login',
      queryParameters: requestHeaders,
      data: jsonEncode(model.toJson()),
    );
    print(response.statusCode);

    if (response.statusCode == 201) {
      //store jwt
      print(response.data);
      return true;
    } else {
      print(response.data);
      return false;
    }
  }
}
