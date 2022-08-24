import 'package:flutter/material.dart';

import 'package:mistri/constants/utils.dart';
import 'package:mistri/features/auth/screen/login.dart';
//import 'package:mistri/features/auth/screen/welcome.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LogoutServices {
  void logOut(BuildContext context) async {
    try {
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      await sharedPreferences.setString('x-auth-token', '');
      Navigator.pushNamedAndRemoveUntil(
        context,
        LoginPage.routeName,
        (route) => false,
      );
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}
