import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mojgenieproject/api/loginApi/responce.dart';
import 'package:mojgenieproject/api/loginApi/url.dart';
import 'package:mojgenieproject/screens/homescreen.dart';

class LoginApiClass {
  // ApiClass._internal();
  // static ApiClass instance=ApiClass._internal();
  // factory ApiClass.getinstance(){
  //   return instance;
  // }

  Dio dio = Dio();

  UrlClass url = UrlClass();

  LoginApiClass() {
    dio.options = BaseOptions(
      baseUrl: url.loginBaseUrl,
      responseType: ResponseType.json,
    );
  }
  Future<Loginresponce?> loginUerapi(
      FormData formData, BuildContext context) async {
    try {
      final result = await dio.post(url.loginEndPoint, data: formData);

      return Loginresponce.fromJson(jsonDecode(result.data));
    } on DioError catch (e) {
      print(e);
    } catch (e) {
      print(e);
    }
  }
}
