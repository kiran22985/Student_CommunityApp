import 'dart:convert';

import 'package:mistri/constants/error_handling.dart';
import 'package:mistri/constants/global_variables.dart';
import 'package:mistri/constants/utils.dart';
import 'package:mistri/models/service.dart';
import 'package:mistri/models/customer.dart';
import 'package:mistri/provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
String uri = 'http://10.0.2.2:3000';
//cart services added here
class CartServices {
  void removeFromCart({
    required BuildContext context,
    required Service product,
  }) async {
    final userProvider = Provider.of<UserProvider>(context, listen: false);

    try {
      http.Response res = await http.delete(
        Uri.parse('$uri/api/remove-from-cart/${product.id}'),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          'x-auth-token': userProvider.user.token,
        },
      );

      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () {
          User user =
              userProvider.user.copyWith(cart: jsonDecode(res.body)['cart']);
          userProvider.setUserFromModel(user);
        },
      );
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}