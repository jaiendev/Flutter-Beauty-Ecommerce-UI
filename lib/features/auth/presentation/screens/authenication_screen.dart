import 'package:flutter/material.dart';
import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:lotus_application/core/app/constants/assets_icon_image.dart';
import 'package:lotus_application/core/utils/app_bar/app_bar_none.dart';
import 'package:lotus_application/features/auth/presentation/screens/login_screen.dart';
import 'package:lotus_application/features/auth/presentation/screens/register_screen.dart';
import 'package:sizer/sizer.dart';

class AuthenicationScreen extends StatefulWidget {
  const AuthenicationScreen({super.key});

  @override
  State<AuthenicationScreen> createState() => _AuthenicationScreenState();
}

class _AuthenicationScreenState extends State<AuthenicationScreen> {
  final PageController _controller = PageController();
  List<Widget> _list = [];
  int _currentIndex = 0;
  @override
  void initState() {
    super.initState();
    _list = [
      LoginScreen(
        onTapRegister: () {
          setState(() {
            _controller.nextPage(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeIn,
            );
          });
        },
      ),
      RegisterScreen(
        onLogin: () {
          setState(() {
            _controller.previousPage(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeIn,
            );
          });
        },
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBarNone(context: context, brightness: Brightness.dark),
      body: Stack(
        children: [
          Image.asset(
            AssetsIconImage.imgBackgroundLogin,
            height: 55.h,
            fit: BoxFit.fitHeight,
          ),
          Column(
            children: [
              Container(
                height: 55.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      colorPrimary2.withOpacity(0.9),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: colorPrimary,
                ),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 12.sp, vertical: 28.sp),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  _currentIndex == 0
                      ? "Let's get you Login!"
                      : "Create an account",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 15.sp),
                Text(
                  _currentIndex == 0
                      ? 'Enter your information below.'
                      : 'Sign up now and unlock exclusive access!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11.sp,
                  ),
                ),
                SizedBox(height: 26.sp),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.sp),
                    ),
                    child: PageView(
                      controller: _controller,
                      onPageChanged: (index) {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                      children: _list,
                    ),
                  ),
                ),
                SizedBox(height: 15.sp),
              ],
            ),
          )
        ],
      ),
    );
  }
}
