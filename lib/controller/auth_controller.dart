import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:syn_laundry/config/config.dart';
import 'dart:convert';

import 'package:syn_laundry/pages/landing_page.dart';

class AuthController extends GetxController {
  //variabel inputan
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController telepon = TextEditingController();
  TextEditingController password = TextEditingController();

  //fungsi login
  Future login() async {
    //variable link end point
    var url = Uri.parse(Config().urlLogin);
    try {
      final Response = await http
          .post(url, body: {'email': email.text, 'passowrd': password.text});

      // ambil response body
      var responseDecode = json.decode(Response.body);

      // jika berhasil
      if (Response.statusCode == 200) {
        Get.offAll(LandingPage());
      } else {
        Get.snackbar('error', responseDecode['message']);
      }
    } catch (e) {}
  }
}
