import 'package:flutter/material.dart';
import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:lotus_application/core/app/constants/assets_icon_image.dart';
import 'package:lotus_application/core/utils/button_app.dart';
import 'package:lotus_application/core/utils/text_form_field/auth_form_field.dart';
import 'package:lotus_application/features/auth/widgets/button_login_social.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatefulWidget {
  final Function() onTapRegister;
  const LoginScreen({super.key, required this.onTapRegister});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _passwordVisible = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          "Let's get you Login!",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 15.sp),
        Text(
          'Enter your information below.',
          style: TextStyle(
            color: Colors.white,
            fontSize: 11.sp,
          ),
        ),
        SizedBox(height: 26.sp),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: 12.sp,
            vertical: 20.sp,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.sp),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: ButtonLoginSocial(
                      icon: AssetsIconImage.icFacebook,
                      onTap: () {},
                      title: 'Facebook',
                    ),
                  ),
                  SizedBox(width: 12.sp),
                  Expanded(
                    child: ButtonLoginSocial(
                      icon: AssetsIconImage.icGoogle,
                      onTap: () {},
                      title: 'Google',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.sp),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: colorPrimary2.withOpacity(0.2),
                      height: 0.7.sp,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.sp),
                    child: Text(
                      'Or login with',
                      style: TextStyle(
                        color: colorPrimary2,
                        fontSize: 11.sp,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: colorPrimary2.withOpacity(0.2),
                      height: 0.7.sp,
                    ),
                  )
                ],
              ),
              SizedBox(height: 20.sp),
              Text(
                'Email Address',
                style: TextStyle(
                  color: colorPrimary2,
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 5.sp),
              AuthFormField(
                textVisible: true,
                keyboardType: TextInputType.emailAddress,
                hintText: 'Email Address',
                onChanged: (value) {},
                validator: (value) {
                  return null;
                },
              ),
              SizedBox(height: 13.sp),
              Text(
                'Password',
                style: TextStyle(
                  color: colorPrimary2,
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 5.sp),
              AuthFormField(
                textVisible: true,
                keyboardType: TextInputType.emailAddress,
                hintText: 'Password',
                onChanged: (value) {},
                validator: (value) {
                  return null;
                },
                suffixIcon: GestureDetector(
                  child: Padding(
                    padding: EdgeInsets.only(right: 8.sp),
                    child: Image.asset(
                      _passwordVisible
                          ? AssetsIconImage.icEyeHide
                          : AssetsIconImage.icEyeView,
                      width: 16.sp,
                      color: colorPrimary2,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      _passwordVisible = !_passwordVisible;
                    });
                  },
                ),
              ),
              SizedBox(height: 10.sp),
              Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.symmetric(vertical: 5.sp),
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontSize: 11.sp,
                    color: colorPrimary2,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 24.sp),
              ButtonApp(
                onTap: () {},
                title: 'Login',
              ),
              SizedBox(height: 20.sp),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: colorPrimary2.withOpacity(0.5),
                      fontSize: 11.sp,
                    ),
                  ),
                  GestureDetector(
                    onTap: widget.onTapRegister,
                    child: Container(
                      color: Colors.transparent,
                      padding: EdgeInsets.all(4.sp),
                      child: Text(
                        'Register Now',
                        style: TextStyle(
                          color: colorPrimary2,
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(height: 26.sp),
      ],
    );
  }
}
