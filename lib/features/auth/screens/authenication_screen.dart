import 'package:flutter/material.dart';
import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:lotus_application/core/app/constants/assets_icon_image.dart';
import 'package:lotus_application/features/auth/screens/login_screen.dart';
import 'package:sizer/sizer.dart';

class AuthenicationScreen extends StatefulWidget {
  const AuthenicationScreen({super.key});

  @override
  State<AuthenicationScreen> createState() => _AuthenicationScreenState();
}

class _AuthenicationScreenState extends State<AuthenicationScreen> {
  bool _isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            child: LayoutBuilder(
              builder: (context, constraints) {
                return AnimatedSwitcher(
                  duration: const Duration(seconds: 1),
                  child: _isLogin
                      ? LoginScreen(
                          onTapRegister: () {
                            setState(() {
                              _isLogin = false;
                            });
                          },
                        )
                      : Container(
                          height: 100.sp,
                          width: double.infinity,
                          color: Colors.red,
                        ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
