import 'package:flutter/material.dart';
import 'package:mistri/constants/global_variables.dart';
import 'package:badges/badges.dart';
import 'package:mistri/features/auth/screen/homepage.dart';
import 'package:mistri/features/auth/screen/professional_screen.dart';
import 'package:mistri/features/auth/screen/profile.dart';
import 'package:mistri/features/auth/screen/cart_screen.dart';
import 'package:mistri/provider/user_provider.dart';
import 'package:provider/src/provider.dart';

class BottonBar extends StatefulWidget {
  static const String routeName = '/bottombar';
  const BottonBar({ Key? key }) : super(key: key);

  @override
  State<BottonBar> createState() => _BottonBarState();
}

class _BottonBarState extends State<BottonBar> {
  int _page=0;
  double bottomBarWidth = 42;
  double bottomBarBorderWidth = 5;

  List<Widget> pages = [
    const HomePage(),
    const CartScreen(),
    const ProfessionalScreen(),
    const AccountScreen(),
    
  ];

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }
  @override
  Widget build(BuildContext context) {
    final userCartLen = context.watch<UserProvider>().user.cart.length;
    return Scaffold(
          body: pages[_page],
          bottomNavigationBar: BottomNavigationBar(
            
          currentIndex: _page,
          selectedItemColor: GlobalVariables.selectedNavBarColor,
          unselectedItemColor: GlobalVariables.unselectedNavBarColor,
          backgroundColor: GlobalVariables.backgroundColor,
          iconSize: 20,
          type: BottomNavigationBarType.fixed,
          onTap:updatePage ,
          items:[
            // HOME
            BottomNavigationBarItem(
              icon: Container(
                width: bottomBarWidth,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: _page == 0
                          ? GlobalVariables.selectedNavBarColor
                          : GlobalVariables.backgroundColor,
                      width: bottomBarBorderWidth,
                    ),
                  ),
                ),
                child: const Icon(
                  Icons.home_outlined,
                ),
              ),
              label: 'Home',
            ),
              // CART
            BottomNavigationBarItem(
              icon: Container(
                width: bottomBarWidth,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: _page == 1
                          ? GlobalVariables.selectedNavBarColor
                          : GlobalVariables.backgroundColor,
                      width: bottomBarBorderWidth,
                    ),
                  ),
                ),
                // child: const Icon(
                //     Icons.shopping_cart_outlined,
                //   ),
                child: Badge(
                  elevation: 0,
                  badgeContent: Text(userCartLen.toString()),
    
                  badgeColor: Colors.white,
                  child: const Icon(
                    Icons.shopping_cart_outlined,
                  ),
                ),
              ),
              label: 'Cart',
            ),
              BottomNavigationBarItem(
              icon: Container(
                width: bottomBarWidth,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: _page == 2
                          ? GlobalVariables.selectedNavBarColor
                          : GlobalVariables.backgroundColor,
                      width: bottomBarBorderWidth,
                    ),
                  ),
                ),
                child: const Icon(
                  Icons.person_outline_outlined,
                ),
              ),
              label: 'Professionals',
            ),
              BottomNavigationBarItem(
              icon: Container(
                width: bottomBarWidth,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: _page == 3
                          ? GlobalVariables.selectedNavBarColor
                          : GlobalVariables.backgroundColor,
                      width: bottomBarBorderWidth,
                    ),
                  ),
                ),
                child: const Icon(
                  Icons.person
                ),
              ),
              label: 'Profile',
            ),
        
              ]),
        );

      
    
  }
}