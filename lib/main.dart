import 'package:flutter/material.dart';
import 'package:mistri/features/auth/screen/address_screen.dart';
import 'package:mistri/features/auth/screen/admin_screen.dart';
import 'package:mistri/features/auth/screen/welcome.dart';
import 'package:mistri/provider/user_provider.dart';
import 'package:mistri/router.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => UserProvider(),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: (settings) => generateRoute(settings),    
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomePage(),
        '/admin':(context)=>const AdminScreen(),
        


      },
    );
  }
}
