import 'dart:convert';

import 'package:mistri/models/customer.dart';
import 'package:http/http.dart' as http;
import 'package:mistri/constants/error_handling.dart';
import 'package:mistri/constants/utils.dart';
import 'package:mistri/provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

String uri = 'http://10.0.2.2:3000';


class AuthService {
  
  void signupUser({
    required BuildContext context,
    required fullName,
    required phone,
    required email,
    required address,
    required password,
  }) async {
    try {
      User user = User(
          id: '',
          fullName: fullName,
          password: password,
          email: email,
          address: address,
          phone: phone,
          type: '',
          token: '',
          cart: [],);

      http.Response res = await http.post(
        Uri.parse('$uri/custregister'),
        body: user.toJson(),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () {
          showDialog(
              //barrierColor: Colors.lightGreen.shade400,
              context: context,
              builder: (ctx) => AlertDialog(
                    title: const Text(
                      "Congratulations!!!",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.green),
                    ),
                    content: const Text("You have been registered successfully"),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                          
                          
                        },
                        child: const Text("Ok"),
                      ),
                    ],
                  ));
        },
      );
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }

  // sign in user
  void signInUser({
    
    required BuildContext context,
    required String email,
    required String password,
    final user = Provider.of<UserProvider>
  }) async {
    try {
      http.Response res = await http.post(
        Uri.parse('$uri/custlogin'),
        body: jsonEncode({
          'email': email,
          'password': password,
        }),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () async {
          SharedPreferences prefs = await SharedPreferences.getInstance();
          Provider.of<UserProvider>(context, listen: false).setUser(res.body);
          await prefs.setString('x-auth-token', jsonDecode(res.body)['token']);
          showDialog(
              //barrierColor: Colors.lightGreen.shade400,
              context: context,
              builder: (ctx) => AlertDialog(
                    title: const Text(
                      "Congratulations!!!",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.green),
                    ),
                    content: const Text("You have been login successfully"),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/bottombar');
                          // if(user.type!='user'){
                          //   Navigator.pushNamed(context, '/admin');
                          // }else{
                          //   Navigator.pushNamed(context, '/bottombar');
                          // }
                        },
                        child: const Text("Ok"),
                      ),
                    ],
                  ));
        },
      );
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}
