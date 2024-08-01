import 'package:go_router/go_router.dart';
import 'package:todo_app/auth/login/login_screen.dart';
import 'package:todo_app/auth/registration/registration_screen.dart';
import 'package:todo_app/dashboard/dashboard_screen.dart';
import 'package:todo_app/splash/splash_screen.dart';
import 'package:todo_app/utils/app_route_name.dart';

abstract class AppRoute {
// GoRouter configuration
  static final router = GoRouter(
    initialLocation: AppRouteName.splashScreen,
    routes: [
      GoRoute(
        path: AppRouteName.dashboardScreen,
        builder: (context, state) => const DashboardScreen(),
      ),
      GoRoute(
        path: AppRouteName.registrationScreen,
        builder: (context, state) => const RegistrationScreen(),
      ),
      GoRoute(
        path: AppRouteName.loginScreen,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: AppRouteName.splashScreen,
        builder: (context, state) => const SplashScreen(),
      ),
    ],
  );
}
