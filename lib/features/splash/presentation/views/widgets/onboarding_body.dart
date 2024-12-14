import 'package:courses_app/core/utlis/colors.dart';
import 'package:courses_app/core/utlis/routes.dart';
import 'package:courses_app/core/utlis/styles.dart';
import 'package:courses_app/features/splash/presentation/views/widgets/pageview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({super.key});

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppcColors.backgroundColor,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 60.h, right: 24.w, left: 328.w),
            child: InkWell(
              onTap: () => GoRouter.of(context).push(AppRoutes.klogin),
              child: Text("Skip", style: Styles.text17),
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          Expanded(
              child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            children: const [
              Pageview(
                  image: 'assets/images/development-coding (1).png',
                  title: 'Best place to learn programming',
                  subtitle:
                      'In Course programming center, you will learn how to code in the right way with the best instructors.'),
              Pageview(
                image: 'assets/images/work-video-conference (1).png',
                title: 'Excellent learning environment',
                subtitle:
                    'You can choose the constructor you like, and the academy provides continuous follow-up and periodic exams, and viewing the educational content on our platform to catch up on what you missed.',
              ),
              Pageview(
                  image: 'assets/images/interface-success (1).png',
                  title: 'Achieve your goal and be unique',
                  subtitle:
                      'After completing the course, you will be able to keep up with the labor market and obtain a job opportunity in your field or start your own project.')
            ],
          )),
          Padding(
            padding: EdgeInsets.only(bottom: 70.h),
            child: Column(
              children: [
                SmoothPageIndicator(
                  controller: _pageController,
                  count: 3,
                  effect: WormEffect(
                    dotHeight: 13.h,
                    dotWidth: 13.w,
                    activeDotColor: AppcColors.fayurozi,
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  width: 70.w,
                  height: 70.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.black26),
                  child: TextButton(
                    onPressed: () {
                      if (_currentIndex < 2) {
                        _pageController.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      } else {
                        print('Finished onboarding!');
                      }
                    },
                    child: const Icon(
                      Icons.keyboard_arrow_right_outlined,
                      size: 50,
                      color: AppcColors.colorwhite,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
