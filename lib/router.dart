import 'package:mistri/common/widgets/bottom_bar.dart';
import 'package:mistri/features/auth/screen/aboutpage.dart';
import 'package:mistri/features/auth/screen/add_service_screen.dart';
import 'package:mistri/features/auth/screen/address_box.dart';
import 'package:mistri/features/auth/screen/address_screen.dart';
import 'package:mistri/features/auth/screen/category_deals_screen.dart';

import 'package:mistri/features/auth/screen/login.dart';
import 'package:mistri/features/auth/screen/admin_screen.dart';
import 'package:mistri/features/auth/screen/below_app_bar.dart';
import 'package:mistri/features/auth/screen/carousel_image.dart';
import 'package:mistri/features/auth/screen/cart_screen.dart';
import 'package:mistri/features/auth/screen/chooseaccount.dart';
import 'package:mistri/features/auth/screen/homepage.dart';

import 'package:mistri/features/auth/screen/otp1.dart';
import 'package:mistri/features/auth/screen/otp2.dart';
import 'package:mistri/features/auth/screen/product_details_screen.dart';

import 'package:mistri/features/auth/screen/professional_loginpage.dart';
import 'package:mistri/features/auth/screen/professional_screen.dart';
import 'package:mistri/features/auth/screen/profile.dart';
import 'package:mistri/features/auth/screen/proregpage1.dart';
import 'package:mistri/features/auth/screen/proregpage2.dart';

import 'package:mistri/features/auth/screen/proregpage4.dart';
import 'package:mistri/features/auth/screen/register.dart';
import 'package:mistri/features/auth/screen/resetpass1.dart';
import 'package:mistri/features/auth/screen/resetpass2.dart';
import 'package:flutter/material.dart';
import 'package:mistri/features/auth/screen/resetpass3.dart';
import 'package:mistri/features/auth/screen/service_page1.dart';
import 'package:mistri/features/auth/screen/service_page2.dart';
import 'package:mistri/features/auth/screen/service_page3.dart';
import 'package:mistri/features/auth/screen/top_categories.dart';
import 'package:mistri/features/auth/screen/verified.dart';
import 'package:mistri/features/auth/screen/view_service1.dart';
import 'package:mistri/features/auth/screen/view_service2.dart';
import 'package:mistri/features/auth/screen/view_service3.dart';
import 'package:mistri/features/auth/screen/welcome.dart';
import 'package:mistri/features/auth/search/search_screen.dart';
import 'package:mistri/models/service.dart';
Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case CategoryDealsScreen.routeName:
      var category = routeSettings.arguments as String;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => CategoryDealsScreen(category: category)
      );
    case WelcomePage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const WelcomePage(),
      );
      case LoginPage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const LoginPage(),
      );
      case Professional_LoginPage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Professional_LoginPage(),
      );
      
      case AddressScreen.routeName:
      var totalAmount1 = routeSettings.arguments as String;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => AddressScreen(totalAmount: totalAmount1,),
      );
    case HomePage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HomePage(),
      );
    case AccountChosePage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AccountChosePage(),
      );
    case RegisterPage1.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const RegisterPage1(),
      );
      

    case OTP1.routeName:
      //var category = routeSettings.arguments as String;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const OTP1(),
      );
    case OTP2.routeName:
      //var searchQuery = routeSettings.arguments as String;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) =>  const OTP2(),
      );
    
    case VerifiedPage.routeName:
      //var totalAmount = routeSettings.arguments as String;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => VerifiedPage(),
      );
    case ResetPage1.routeName:
      //var order = routeSettings.arguments as Order;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => ResetPage1(),
      );

      case ResetPage2.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const ResetPage2(),
      );

      case ResetPage3.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const ResetPage3(),
      );

      case ProRegPage1.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const ProRegPage1(),
      );
      case ProRegPage2.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const ProRegPage2(),
      );
      
      case ProRegPage4.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const ProRegPage4(),
      );
      case BottonBar.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const BottonBar(),
      );
      case About.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const About(),
      );
      case SErvicePage1.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => SErvicePage1()
      );
      case ViewService1.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const ViewService1(),
      );
      case ViewService2.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const ViewService2(),
      );
      case ViewService3.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const ViewService3(),
      );
      case AdminScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AdminScreen(),
      );
      case AddServiceScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AddServiceScreen(),
      );
      case SearchScreen.routeName:
      var searchQuery = routeSettings.arguments as String;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => SearchScreen(searchQuery: searchQuery,),
      );
      case ProductDetailScreen.routeName:
      var product = routeSettings.arguments as Service;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) =>  ProductDetailScreen(product: product,),
      );
      
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Screen does not exist!'),
          ),
        ),
      );
  }
}