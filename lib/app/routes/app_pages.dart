import 'package:get/get.dart';

import 'package:wecare_apps/app/modules/chat/bindings/chat_binding.dart';
import 'package:wecare_apps/app/modules/chat/views/chat_view.dart';
import 'package:wecare_apps/app/modules/dashboard/bindings/dashboard_binding.dart';
import 'package:wecare_apps/app/modules/dashboard/views/dashboard_view.dart';
import 'package:wecare_apps/app/modules/get_started/bindings/get_started_binding.dart';
import 'package:wecare_apps/app/modules/get_started/views/get_started_view.dart';
import 'package:wecare_apps/app/modules/home/bindings/home_binding.dart';
import 'package:wecare_apps/app/modules/home/views/home_view.dart';
import 'package:wecare_apps/app/modules/login/bindings/login_binding.dart';
import 'package:wecare_apps/app/modules/login/views/login_view.dart';
import 'package:wecare_apps/app/modules/menu/bindings/menu_binding.dart';
import 'package:wecare_apps/app/modules/menu/views/menu_view.dart';
import 'package:wecare_apps/app/modules/profile/bindings/profile_binding.dart';
import 'package:wecare_apps/app/modules/profile/views/profile_view.dart';
import 'package:wecare_apps/app/modules/register/bindings/register_binding.dart';
import 'package:wecare_apps/app/modules/register/views/register_view.dart';
import 'package:wecare_apps/app/modules/schedule/bindings/schedule_binding.dart';
import 'package:wecare_apps/app/modules/schedule/views/schedule_view.dart';
import 'package:wecare_apps/app/modules/splashscreen/bindings/splashscreen_binding.dart';
import 'package:wecare_apps/app/modules/splashscreen/views/splashscreen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASHSCREEN,
      page: () => SplashscreenView(),
      binding: SplashscreenBinding(),
    ),
    GetPage(
      name: _Paths.GET_STARTED,
      page: () => GetStartedView(),
      binding: GetStartedBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.CHAT,
      page: () => ChatView(),
      binding: ChatBinding(),
    ),
    GetPage(
      name: _Paths.SCHEDULE,
      page: () => ScheduleView(),
      binding: ScheduleBinding(),
    ),
    GetPage(
      name: _Paths.MENU,
      page: () => MenuView(),
      binding: MenuBinding(),
    ),
  ];
}
