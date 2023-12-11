import 'package:flutter/material.dart';
import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:lotus_application/core/app/constants/assets_icon_image.dart';
import 'package:lotus_application/core/utils/button_app.dart';
import 'package:lotus_application/core/utils/text_form_field/auth_form_field.dart';
import 'package:lotus_application/features/auth/presentation/widgets/button_login_social.dart';
import 'package:sizer/sizer.dart';

class RegisterScreen extends StatefulWidget {
  final Function() onLogin;
  const RegisterScreen({super.key, required this.onLogin});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 12.sp,
      ).add(
        EdgeInsets.only(
          top: 20.sp,
        ),
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
                  'Or register with',
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
              ),
            ],
          ),
          SizedBox(height: 15.sp),
          Text(
            'Name',
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
            hintText: 'Name',
            onChanged: (value) {},
            validator: (value) {
              return null;
            },
          ),
          SizedBox(height: 13.sp),
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
          SizedBox(height: 18.sp),
          ButtonApp(
            onTap: () {},
            title: 'Register',
          ),
          SizedBox(height: 14.sp),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an account?',
                style: TextStyle(
                  color: colorPrimary2.withOpacity(0.5),
                  fontSize: 11.sp,
                ),
              ),
              GestureDetector(
                onTap: widget.onLogin,
                child: Container(
                  color: Colors.transparent,
                  padding: EdgeInsets.all(4.sp),
                  child: Text(
                    'Log in',
                    style: TextStyle(
                      color: colorPrimary2,
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
