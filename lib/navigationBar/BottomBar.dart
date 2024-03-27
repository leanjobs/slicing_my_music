import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player/pages/GenreScreen.dart';
import 'package:music_player/pages/HomeScreen.dart';
import 'package:music_player/pages/LikedScreen.dart';
import 'package:music_player/pages/SearchScreen.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> _buildScreens() {
      return [
        HomeScreen(),
        SearchScreen(),
        LikedScreen(),
      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: Icon(
            CupertinoIcons.home,
            size: 30,
          ),
          activeColorPrimary: Color(0xFF1E9FE0),
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(
            CupertinoIcons.search,
            size: 30,
          ),
          activeColorPrimary: Color(0xFF1E9FE0),
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(
            Icons.favorite,
            size: 30,
          ),
          activeColorPrimary: Color(0xFF1E9FE0),
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
      ];
    }

    PersistentTabController _controller =
        PersistentTabController(initialIndex: 0);

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF191A1E).withOpacity(0.1),
            Color(0xFF191A1E).withOpacity(0.8),
            Color(0xFF191A1E).withOpacity(1.0),
            Color(0xFF191A1E),
          ],
        ),
      ),
      child: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.transparent, // Setel menjadi transparan
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        hideNavigationBarWhenKeyboardShows: true,
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.transparent,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: ItemAnimationProperties(
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style1,
        navBarHeight: 80,
      ),
    );
  }
}
