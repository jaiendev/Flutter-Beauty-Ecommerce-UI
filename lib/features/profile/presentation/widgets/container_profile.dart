import 'package:flutter/material.dart';
import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:lotus_application/core/app/constants/assets_icon_image.dart';
import 'package:lotus_application/features/profile/presentation/widgets/container_text_icon.dart';
import 'package:lotus_application/features/profile/presentation/widgets/divider_container.dart';
import 'package:sizer/sizer.dart';

class ContainerProfile extends StatelessWidget {
  const ContainerProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.sp),
      decoration: BoxDecoration(
        color: colorPrimary,
        borderRadius: BorderRadius.circular(10.sp),
        border: Border.all(width: 0.2.sp, color: colorPrimary2),
        boxShadow: [
          BoxShadow(
            color: colorPrimary2.withOpacity(0.15),
            spreadRadius: 0.4,
            blurRadius: 6,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      height: 70.sp,
      child: const Row(
        children: [
          ContainerIconText(
            icon: AssetsIconImage.icMyOrder,
            title: 'My order',
          ),
          DividerContainer(),
          ContainerIconText(
            icon: AssetsIconImage.icWishlist,
            title: 'Wishlist',
          ),
          DividerContainer(),
          ContainerIconText(
            icon: AssetsIconImage.icVoucher,
            title: 'Voucher',
          ),
        ],
      ),
    );
  }
}
