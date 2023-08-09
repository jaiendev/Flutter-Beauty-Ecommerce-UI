// Remote Data
import 'package:flutter/material.dart';
import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:sizer/sizer.dart';

const String serviceBaseEndpoint = 'https://lala';

// Utils
const double inchToDP = 160;

// Delay times - miliseconds
const int delay100ms = 100;
const int delay200ms = 200;
const int durationDefaultAnimation = 300;
const int delay500ms = 500;
const int delayASecond = 1000;
const int connectTimeOut = 5000;
const int receiveTimeOut = 5000;

// UI Divider
Container dividerChatBig = Container(
  width: double.infinity,
  color: colorPrimary2.withOpacity(0.2),
  height: 5,
);

Divider get dividerChat {
  return const Divider();
}

Divider get dividerChatWithPadding {
  return Divider(
    indent: 12.sp,
    endIndent: 12.sp,
  );
}
