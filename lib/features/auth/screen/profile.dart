import 'package:mistri/constants/global_variables.dart';
import 'package:flutter/material.dart';
import 'package:mistri/features/auth/services/logout_services.dart';
import 'package:mistri/provider/user_provider.dart';

import 'package:provider/provider.dart';
class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: GlobalVariables.appBarGradient,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: const Text('Mistri.com',style:TextStyle(
                  fontWeight: FontWeight.bold,color:Colors.black,
                )),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row( 
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Icon(Icons.notifications_outlined),
                    ),
                    Icon(
                      Icons.search,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: ListView(
          
          //padding: const EdgeInsets.only(top:10),
          children: [
            Container(
              width: double.infinity,
              height: 160,
              color: Colors.greenAccent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Welcome,"+user.fullName,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 10,),
                  Text(user.email)
                ],
              ),
            ),
            
            ListTile(
              leading: const Icon(Icons.description),
              title: const Text('About Mistri'),
              onTap: () {
                Navigator.pushNamed(context, '/about');
              },
            ),
            ListTile(
              leading: const Icon(Icons.people),
              title: const Text('Register as Proffesional'),
              onTap: () {
                Navigator.pushNamed(context, '/proreg1');
              },
            ),
            ListTile(
              leading: const Icon(Icons.share),
              title: const Text('Share Mistri'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.rate_review),
              title: const Text('Rate Us'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.calendar_view_month),
              title: const Text('Sheduled Booking'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.logout,
              ),
              title: const Text('Logout'),
              onTap: () =>LogoutServices().logOut(context),
            ),
          ],
        ),
      
    );
  }
}