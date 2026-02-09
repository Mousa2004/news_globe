import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_globe/presentation/tabs/categories_tab/presentation/screen/categories_tab.dart';
import 'package:news_globe/presentation/tabs/home_tab/presentation/screen/home_tab.dart';
import 'package:news_globe/presentation/tabs/profile_tab/presentation/screen/profile_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  NotchBottomBarController controller = NotchBottomBarController();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  int selectIndex = 0;
  List<Widget> get tabs => [
    HomeTab(scaffoldKey: scaffoldKey),
    CategoriesTab(),
    ProfileTab(),
  ];
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(width: width * 0.6),
      bottomNavigationBar: SafeArea(
        child: AnimatedNotchBottomBar(
          showLabel: true,
          removeMargins: true,
          topMargin: 24.h,
          circleMargin: 0,
          kIconSize: 26.h,
          kBottomRadius: 0,
          bottomBarHeight: 45.h,
          notchColor: const Color.fromARGB(255, 229, 71, 60),
          elevation: 0,
          showTopRadius: false,
          notchBottomBarController: controller,
          bottomBarWidth: width,
          bottomBarItems: [
            customedBottomBarItem(
              inActiveItem: Icons.home,
              activeItem: Icons.home,
              label: "Home",
            ),
            customedBottomBarItem(
              inActiveItem: Icons.drag_indicator,
              activeItem: Icons.drag_indicator,
              label: "Categories",
            ),
            customedBottomBarItem(
              inActiveItem: Icons.person,
              activeItem: Icons.person,
              label: "Profile",
            ),
          ],
          onTap: (int index) {
            selectIndex = index;
            setState(() {});
          },
        ),
      ),
      body: tabs[selectIndex],
    );
  }

  BottomBarItem customedBottomBarItem({
    required IconData inActiveItem,
    required IconData activeItem,
    required String label,
  }) {
    return BottomBarItem(
      itemLabelWidget: Text(
        label,
        style: TextStyle(fontSize: 10.sp),
        textAlign: TextAlign.center,
      ),
      inActiveItem: Icon(inActiveItem, color: Colors.black, size: 32.sp),
      activeItem: Transform.translate(
        offset: Offset(2.w, -9.h),
        child: Icon(activeItem, color: Colors.black, size: 35.sp),
      ),
    );
  }
}
