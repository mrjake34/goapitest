import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goapitest/base/constants/colors/colors.dart';
import 'package:goapitest/screens/home/view/home_page.dart';
import 'package:goapitest/screens/products/view/products_page.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final int _selectedIndex = 2;

  final List<Widget> _widgetOptions = <Widget>[
    const ProductsPage(),
    const Text(
      'Index 1: Cart',
    ),
    const HomePage(),
    const Text(
      'Index 2: Profile',
    ),
    const Text(
      'Index 2: Profile',
    ),
  ];

  final List<PersistentBottomNavBarItem> _navBarsItems = [
    PersistentBottomNavBarItem(
      icon: CircleAvatar(
          radius: 30,
          backgroundColor: AppColors.primaryColor,
          child: const Icon(
            CupertinoIcons.square_list,
            color: Colors.white,
          )),
      inactiveIcon: const Icon(
        CupertinoIcons.square_list,
        color: Colors.grey,
      ),
      activeColorSecondary: Colors.white,
      activeColorPrimary: AppColors.primaryColor,
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: CircleAvatar(
          radius: 30,
          backgroundColor: AppColors.primaryColor,
          child: const Icon(
            CupertinoIcons.bag,
            color: Colors.white,
          )),
      inactiveIcon: const Icon(
        CupertinoIcons.bag,
        color: Colors.grey,
      ),
      activeColorSecondary: Colors.white,
      activeColorPrimary: AppColors.primaryColor,
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: CircleAvatar(
          radius: 30,
          backgroundColor: AppColors.primaryColor,
          child: const Icon(
            CupertinoIcons.home,
            color: Colors.white,
          )),
      inactiveIcon: const Icon(
        CupertinoIcons.home,
        color: Colors.grey,
      ),
      activeColorSecondary: Colors.white,
      activeColorPrimary: AppColors.primaryColor,
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: CircleAvatar(
          radius: 30,
          backgroundColor: AppColors.primaryColor,
          child: const Icon(
            CupertinoIcons.heart,
            color: Colors.white,
          )),
      inactiveIcon: const Icon(
        CupertinoIcons.heart,
        color: Colors.grey,
      ),
      activeColorSecondary: Colors.white,
      activeColorPrimary: AppColors.primaryColor,
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: CircleAvatar(
          radius: 30,
          backgroundColor: AppColors.primaryColor,
          child: const Icon(
            CupertinoIcons.person,
            color: Colors.white,
          )),
      inactiveIcon: const Icon(
        CupertinoIcons.person,
        color: Colors.grey,
      ),
      activeColorSecondary: Colors.white,
      activeColorPrimary: AppColors.primaryColor,
      inactiveColorPrimary: Colors.grey,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
        navBarStyle: NavBarStyle.style2,
        decoration: const NavBarDecoration(
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8)],
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        ),
        screens: _widgetOptions,
        controller: PersistentTabController(initialIndex: _selectedIndex),
        items: _navBarsItems,
      ),
    );
  }
}
