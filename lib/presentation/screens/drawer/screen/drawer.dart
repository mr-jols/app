import 'package:alpha_customer/app/managers/colors.dart';
import 'package:alpha_customer/app/managers/images.dart';
import 'package:alpha_customer/presentation/screens/bottom_nav/screen/bottom_nav.dart';
import 'package:flutter/material.dart';

class BuildDrawer extends StatelessWidget {
  const BuildDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: ColorManager.primaryColor,
        child: ListView(
          children: [
            buildDrawerHeader(),
            buildDivider(),
            buildListTile(
                imagePath: DrawerImageManager.homeIcon,
                title: "Home",
                newScreen: const BuildBottomNav()),
            buildListTile(
                imagePath: DrawerImageManager.walletIcon,
                title: "Wallet",
                newScreen: const BuildBottomNav(
                  selectedTab: 1,
                )),
            buildListTile(
                imagePath: DrawerImageManager.activitiesIcon,
                title: "Activities",
                newScreen: const BuildBottomNav(
                  selectedTab: 2,
                )),
            buildListTile(
                imagePath: DrawerImageManager.packagesIcon,
                title: "Packages",
                newScreen: const BuildBottomNav(
                  selectedTab: 3,
                )),
            buildListTile(
                imagePath: DrawerImageManager.sendIcon,
                title: "Transfer funds",
                newScreen: Container()),
            buildListTile(
                imagePath: DrawerImageManager.verticalSwitchIcon,
                title: "Pay bills",
                newScreen: Container()),
            buildListTile(
                imagePath: DrawerImageManager.printIcon,
                title: "Airtime & data",
                newScreen: Container()),
            buildListTile(
                imagePath: DrawerImageManager.settingIcon,
                title: "Change password",
                newScreen: Container()),
            buildDivider(),
            buildLogoutButton()
          ],
        ),
      ),
    );
  }

  Padding buildLogoutButton() {
    return Padding(
            padding: const EdgeInsets.only(
                top: 20, left: 20, right: 20, bottom: 40),
            child: Builder(
              builder: (context) {
                return FloatingActionButton.extended(
                    backgroundColor: const Color(0xFFFF1C1C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), // <-- Radius
                    ),
                    onPressed: () {},
                    label: Text('Logout',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(color: ColorManager.onPrimaryColor)),
                    icon: Image.asset(
                      DrawerImageManager.signOutIcon,
                      width: 24,
                      height: 24,
                    ));
              }
            ),
          );
  }

  Widget buildListTile(
      {required String imagePath,
      required String title,
      required Widget newScreen}) {
    return Builder(builder: (context) {
      return ListTile(
        minLeadingWidth: 10,
        leading: Image.asset(
          imagePath,
          width: 24,
          height: 24,
        ),

        title: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: ColorManager.onPrimaryColor),
        ),
        onTap: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => newScreen));
//
        },
        // //  padding: EdgeInsets.zero,
      );
    });
  }

  Widget buildDrawerHeader() {
    return Builder(builder: (context) {
      return DrawerHeader(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
              padding: EdgeInsets.zero,
              visualDensity: VisualDensity.compact,
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.close_sharp,
                color: ColorManager.onPrimaryColor,
                size: 32,
              )),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: ColorManager.onPrimaryColor,
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Oludare Bello",
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(color: ColorManager.onPrimaryColor),
                  ),
                  Text(
                    "oludare.bello@gmail.com",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: ColorManager.onPrimaryColor),
                  )
                ],
              )
            ],
          )
        ],
      ));
    });
  }

  Widget buildDivider() {
    return Builder(builder: (context) {
      return Divider(
        thickness: 1,
        indent: MediaQuery.of(context).size.width / 18,
        endIndent: MediaQuery.of(context).size.width / 15,
        color: ColorManager.onPrimaryColor,
      );
    });
  }
}
