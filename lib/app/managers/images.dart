typedef ImageCallback = String Function(String image);
String Function(String image) getDir(String dir) =>
    (String image) => "assets/images/$dir/$image.png";
String getRootDir(String image) => "assets/images/$image.png";

ImageCallback homeQuickActionsDir = getDir("home/quick_action_icons");
ImageCallback homeUtilityDir = getDir("home/utility_icons");
ImageCallback walletDir = getDir("wallet");
ImageCallback bottomNavActiveDir = getDir("bottom_nav/active");
ImageCallback bottomNavInactiveDir = getDir("bottom_nav/inactive");
ImageCallback drawerDir=getDir("drawer");

abstract class HomeScreenImageManager {
  static String barChartIcon = homeQuickActionsDir("bar_chart");
  static String cardDeliveryIcon = homeQuickActionsDir("card_delivery");
  static String chartPinIcon = homeQuickActionsDir("chart_pin");
  static String deskIcon = homeQuickActionsDir("desk");
  static String inIcon = homeQuickActionsDir("in");
  static String moneyIcon = homeQuickActionsDir("money");
  static String verticalSwitchIcon = homeQuickActionsDir("vertical_switch");
  static String sendIcon = homeUtilityDir("send");
  static String printIcon = homeUtilityDir("print");
  static String mobileIcon = homeUtilityDir("mobile");
  static String dashboard = homeUtilityDir("dashboard");
}

abstract class WalletScreenImageManager {
  static String buildingIcon = walletDir("building");
  static String printIcon = walletDir("print");
}

abstract class BottomNavImageManager {
  static String homeActiveIcon = bottomNavActiveDir("home");
  static String homeInactiveIcon = bottomNavInactiveDir("home");

  static String walletActiveIcon = bottomNavActiveDir("wallet");
  static String walletInactiveIcon = bottomNavInactiveDir("wallet");

  static String activitiesActiveIcon = bottomNavActiveDir("activities");
  static String activitiesInactiveIcon = bottomNavInactiveDir("activities");

  static String packagesActiveIcon = bottomNavActiveDir("packages");
  static String packagesInactiveIcon = bottomNavInactiveDir("packages");
}

abstract class DrawerImageManager{
  static String activitiesIcon=drawerDir("activities");
  static String homeIcon=drawerDir("home");
  static String packagesIcon=drawerDir("packages");
  static String printIcon=drawerDir("print");
  static String sendIcon=drawerDir("send");
  static String settingIcon=drawerDir("setting");
  static String signOutIcon=drawerDir("sign_out");
  static String verticalSwitchIcon=drawerDir("vertical_switch");
  static String walletIcon=drawerDir("wallet");
}