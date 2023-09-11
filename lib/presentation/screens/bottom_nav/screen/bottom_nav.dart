import 'package:alpha_customer/app/managers/colors.dart';
import 'package:alpha_customer/app/managers/images.dart';
import 'package:alpha_customer/presentation/screens/activities/screen/_activities.dart';
import 'package:alpha_customer/presentation/screens/home/screen/_home.dart';
import 'package:alpha_customer/presentation/screens/packages/screen/_packages.dart';
import 'package:alpha_customer/presentation/screens/wallet/screen/_wallet.dart';
import 'package:flutter/material.dart';

class BuildBottomNav extends StatefulWidget {
  const BuildBottomNav({Key? key,this.selectedTab=0}) : super(key: key);
  final int selectedTab;

  @override
  State<BuildBottomNav> createState() => _BuildBottomNavState();
}

class _BuildBottomNavState extends State<BuildBottomNav> {
  int _selectedTab = 0;
  final List<Widget> _pages = [
    const BuildHomeScreen(),
    const BuildWalletScreen(),
    const BuildActivitiesScreen(),
    const BuildPackagesScreen()
  ];

  @override
  void initState() {
    super.initState();
    _selectedTab = widget.selectedTab;
  }

  void _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedTab,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        showUnselectedLabels: true,
        currentIndex: _selectedTab,
        onTap: (index) {
          _changeTab(index);
        },
        selectedItemColor: ColorManager.primaryColor,
        unselectedItemColor: ColorManager.alternateColor1,
        items: [
          BottomNavigationBarItem(
              icon: _selectedTab == 0
                  ? buildNavImage(BottomNavImageManager.homeActiveIcon)
                  : buildNavImage(BottomNavImageManager.homeInactiveIcon),
              label: "Home"),
          BottomNavigationBarItem(
              icon: _selectedTab == 1
                  ? buildNavImage(BottomNavImageManager.walletActiveIcon)
                  : buildNavImage(BottomNavImageManager.walletInactiveIcon),
              label: "Wallet"),
          BottomNavigationBarItem(
              icon: _selectedTab == 2
                  ? buildNavImage(BottomNavImageManager.activitiesActiveIcon)
                  : buildNavImage(BottomNavImageManager.activitiesInactiveIcon),
              label: "Activities"),
          BottomNavigationBarItem(
              icon: _selectedTab == 3
                  ? buildNavImage(BottomNavImageManager.packagesActiveIcon)
                  : buildNavImage(BottomNavImageManager.packagesInactiveIcon),
              label: "Packages"),
        ],
      ),
    );
  }
}

Widget buildNavImage(String imagePath) => Image.asset(
      imagePath,
      width: 24,
      height: 24,
    );
