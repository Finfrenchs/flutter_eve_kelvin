import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wecare_apps/app/constant/color.dart';
import 'package:wecare_apps/app/modules/home/views/home_view.dart';

import '../../chat/views/chat_view.dart';
import '../../menu/views/menu_view.dart';
import '../../profile/views/profile_view.dart';
import '../../schedule/views/schedule_view.dart';
import '../controllers/dashboard_controller.dart';

class DashboardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
        builder: (c){
          return Scaffold(
            body: SafeArea(
              child: IndexedStack(
                index: c.selectedIndex,
                children: [
                  HomeView(),
                  ScheduleView(),
                  MenuView(),
                  ChatView(),
                  ProfileView(),
                ],
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              unselectedItemColor: colorGreenDark,
              selectedItemColor: Colors.white,
              onTap: c.changeSelectedIndex,
              currentIndex: c.selectedIndex,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              type: BottomNavigationBarType.fixed,
              items: [
                _bottomNavigationBarItem(
                  icon: Icons.home,
                  label: "",
                ),
                _bottomNavigationBarItem(
                  icon: Icons.calendar_month,
                  label: "",
                ),
                _bottomNavigationBarItem(
                  icon: Icons.menu,
                  label: "",
                ),
                _bottomNavigationBarItem(
                  icon: Icons.chat,
                  label: "",
                ),
                _bottomNavigationBarItem(
                  icon: Icons.person,
                  label: "",
                ),
              ],
            ),
          );
        });
  }

  _bottomNavigationBarItem({IconData? icon, String? label}) {
    return BottomNavigationBarItem(
      icon: Container(
        width: 50,
        height: 40,
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10.0),
            color: colorGreenDark.withOpacity(0.3)),
        child: Icon(icon),
      ),
      label: label,
    );
  }
}
