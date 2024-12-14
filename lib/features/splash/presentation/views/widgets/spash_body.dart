import 'package:courses_app/core/utlis/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splash();
  }

  splash() {
    Future.delayed(
      const Duration(seconds: 5),
      () {
        GoRouter.of(context).pushReplacement(AppRoutes.kmain);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/splash.jpg"),
                fit: BoxFit.cover)),
      ),
    );
  }
}
