import 'dart:convert';
import 'dart:io';
import 'package:mistri/constants/error_handling.dart';
import 'package:mistri/constants/global_variables.dart';
import 'package:mistri/constants/utils.dart';
// import 'package:mistri/features/admin/models/sales.dart';
// import 'package:mistri/models/order.dart';
import 'package:mistri/models/service.dart';
import 'package:mistri/provider/user_provider.dart';
import 'package:cloudinary_public/cloudinary_public.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
String uri = 'http://10.0.2.2:3000';
class AdminServices {
  void sellProduct({
    required BuildContext context,
    required String name,
    required String description,
    required double price,
    required double time,
    required String category,
    required List<File> images,
  }) async {
    final userProvider = Provider.of<UserProvider>(context, listen: false);

    try {
      final cloudinary = CloudinaryPublic('ddgd21tds', 'rpzzjhjk');
      List<String> imageUrls = [];

      for (int i = 0; i < images.length; i++) {
        CloudinaryResponse res = await cloudinary.uploadFile(
          CloudinaryFile.fromFile(images[i].path, folder: name),
        );
        imageUrls.add(res.secureUrl);
      }

      Service product = Service(
        name: name,
        description: description,
        time: time,
        images: imageUrls,
        category: category,
        price: price,
      );

      http.Response res = await http.post(
        Uri.parse('$uri/admin/add-service'),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          'x-auth-token': userProvider.user.token,
        },
        body: product.toJson(),
      );

      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () {
          showSnackBar(context, 'Service Added Successfully!');
          Navigator.pop(context);
        },
      );
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }

  // get all the products
  Future<List<Service>> fetchAllProducts(BuildContext context) async {
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    List<Service> serviceList = [];
    try {
      http.Response res =
          await http.get(Uri.parse('$uri/admin/get-services'), headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        'x-auth-token': userProvider.user.token,
      });

      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () {
          for (int i = 0; i < jsonDecode(res.body).length; i++) {
            serviceList.add(
              Service.fromJson(
                jsonEncode(
                  jsonDecode(res.body)[i],
                ),
              ),
            );
          }
        },
      );
    } catch (e) {
      showSnackBar(context, e.toString());
    }
    return serviceList;
  }

  void deleteProduct({
    required BuildContext context,
    required Service product,
    required VoidCallback onSuccess,
  }) async {
    final userProvider = Provider.of<UserProvider>(context, listen: false);

    try {
      http.Response res = await http.post(
        Uri.parse('$uri/admin/delete-service'),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          'x-auth-token': userProvider.user.token,
        },
        body: jsonEncode({
          'id': product.id,
        }),
      );

      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () {
          onSuccess();
        },
      );
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }

  // Future<List<Order>> fetchAllOrders(BuildContext context) async {
  //   final userProvider = Provider.of<UserProvider>(context, listen: false);
  //   List<Order> orderList = [];
  //   try {
  //     http.Response res =
  //         await http.get(Uri.parse('$uri/admin/get-orders'), headers: {
  //       'Content-Type': 'application/json; charset=UTF-8',
  //       'x-auth-token': userProvider.user.token,
  //     });

  //     httpErrorHandle(
  //       response: res,
  //       context: context,
  //       onSuccess: () {
  //         for (int i = 0; i < jsonDecode(res.body).length; i++) {
  //           orderList.add(
  //             Order.fromJson(
  //               jsonEncode(
  //                 jsonDecode(res.body)[i],
  //               ),
  //             ),
  //           );
  //         }
  //       },
  //     );
  //   } catch (e) {
  //     showSnackBar(context, e.toString());
  //   }
  //   return orderList;
  // }

  // void changeOrderStatus({
  //   required BuildContext context,
  //   required int status,
  //   required Order order,
  //   required VoidCallback onSuccess,
  // }) async {
  //   final userProvider = Provider.of<UserProvider>(context, listen: false);

  //   try {
  //     http.Response res = await http.post(
  //       Uri.parse('$uri/admin/change-order-status'),
  //       headers: {
  //         'Content-Type': 'application/json; charset=UTF-8',
  //         'x-auth-token': userProvider.user.token,
  //       },
  //       body: jsonEncode({
  //         'id': order.id,
  //         'status': status,
  //       }),
  //     );

  //     httpErrorHandle(
  //       response: res,
  //       context: context,
  //       onSuccess: onSuccess,
  //     );
  //   } catch (e) {
  //     showSnackBar(context, e.toString());
  //   }
  // }

  // Future<Map<String, dynamic>> getEarnings(BuildContext context) async {
  //   final userProvider = Provider.of<UserProvider>(context, listen: false);
  //   List<Sales> sales = [];
  //   int totalEarning = 0;
  //   try {
  //     http.Response res =
  //         await http.get(Uri.parse('$uri/admin/analytics'), headers: {
  //       'Content-Type': 'application/json; charset=UTF-8',
  //       'x-auth-token': userProvider.user.token,
  //     });

  //     httpErrorHandle(
  //       response: res,
  //       context: context,
  //       onSuccess: () {
  //         var response = jsonDecode(res.body);
  //         totalEarning = response['totalEarnings'];
  //         sales = [
  //           Sales('Mobiles', response['mobileEarnings']),
  //           Sales('Essentials', response['essentialEarnings']),
  //           Sales('Books', response['booksEarnings']),
  //           Sales('Appliances', response['applianceEarnings']),
  //           Sales('Fashion', response['fashionEarnings']),
  //         ];
  //       },
  //     );
  //   } catch (e) {
  //     showSnackBar(context, e.toString());
  //   }
  //   return {
  //     'sales': sales,
  //     'totalEarnings': totalEarning,
  //   };
  // }
}