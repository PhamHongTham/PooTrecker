import 'package:flutter/material.dart';
import 'package:phm_th_hng_thm_s_application7/presentation/splash_screen/splash_screen.dart';
import 'package:phm_th_hng_thm_s_application7/presentation/login_screen/login_screen.dart';
import 'package:phm_th_hng_thm_s_application7/presentation/signup_screen/signup_screen.dart';
import 'package:phm_th_hng_thm_s_application7/presentation/first_create_log_screen/first_create_log_screen.dart';
import 'package:phm_th_hng_thm_s_application7/presentation/dashboard_screen/dashboard_screen.dart';
import 'package:phm_th_hng_thm_s_application7/presentation/calendar_screen/calendar_screen.dart';
import 'package:phm_th_hng_thm_s_application7/presentation/detail_day_screen/detail_day_screen.dart';
import 'package:phm_th_hng_thm_s_application7/presentation/create_log_screen/create_log_screen.dart';
import 'package:phm_th_hng_thm_s_application7/presentation/create_log_one_screen/create_log_one_screen.dart';
import 'package:phm_th_hng_thm_s_application7/presentation/first_create_log_full_screen/first_create_log_full_screen.dart';
import 'package:phm_th_hng_thm_s_application7/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String signupScreen = '/signup_screen';

  static const String firstCreateLogScreen = '/first_create_log_screen';

  static const String dashboardScreen = '/dashboard_screen';

  static const String calendarScreen = '/calendar_screen';

  static const String detailDayScreen = '/detail_day_screen';

  static const String createLogScreen = '/create_log_screen';

  static const String createLogOneScreen = '/create_log_one_screen';

  static const String firstCreateLogFullScreen =
      '/first_create_log_full_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        loginScreen: LoginScreen.builder,
        signupScreen: SignupScreen.builder,
        firstCreateLogScreen: FirstCreateLogScreen.builder,
        dashboardScreen: DashboardScreen.builder,
        calendarScreen: CalendarScreen.builder,
        detailDayScreen: DetailDayScreen.builder,
        createLogScreen: CreateLogScreen.builder,
        createLogOneScreen: CreateLogOneScreen.builder,
        firstCreateLogFullScreen: FirstCreateLogFullScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
