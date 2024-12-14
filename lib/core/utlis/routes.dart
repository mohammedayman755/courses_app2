import 'package:courses_app/features/auth/presentation/views/login_screen.dart';
import 'package:courses_app/features/auth/presentation/views/otp_screen.dart';
import 'package:courses_app/features/auth/presentation/views/signup_screen.dart';
import 'package:courses_app/features/auth/presentation/views/success_screen.dart';
import 'package:courses_app/features/splash/presentation/views/onboarding_screen.dart';
import 'package:courses_app/features/splash/presentation/views/splash_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static const kmain = "/onboarding";
  static const klogin = "/login";
  static const ksignup = "/signup";
  static const khome = "/home";
  static const kotp = "/otp";
  static const ksuccess = "/success";
  static final routes = GoRouter(routes: [
    GoRoute(path: "/", builder: (context, state) => const SplashScreen()),
    GoRoute(
        path: "/onboarding",
        builder: (context, state) => const OnboardingScreen()),
    GoRoute(path: "/login", builder: (cotext, state) => const LoginScreen()),
    GoRoute(path: "/signup", builder: (context, state) => const SignupScreen()),
    GoRoute(path: "/otp", builder: (context, state) => const OtpScreen()),
    GoRoute(
        path: "/success", builder: (context, state) => const SuccessScreen())
  ]);
}
