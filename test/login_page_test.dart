import 'package:mistri/features/auth/screen/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';


void main(){
  testWidgets("login page widget testing by using key", (WidgetTester tester) async{
   

   await tester.pumpWidget(MaterialApp(home: LoginPage(),));
   var textfield=find.byType(TextFormField);
   expect(textfield, findsWidgets);
   await tester.enterText(textfield, "Hello");
   expect(find.text("Hello"), findsWidgets);

  });
}