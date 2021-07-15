

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AuthService {
  Dio dio = new Dio();

  login(email, password) async {
    try{
      return await dio.post('https://young-river-52714.herokuapp.com/api/v1/mobileapp/fundme/donor/login',data: {
        "email":email,
        "password": password,
      },options: Options(contentType: Headers.formUrlEncodedContentType)
      );
    }
    on DioError catch(e){
      Fluttertoast.showToast(msg: e.response.data['msg'],
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
      );
    }
  }
}