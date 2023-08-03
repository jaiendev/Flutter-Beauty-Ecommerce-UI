import 'package:flutter/material.dart';
import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:lotus_application/features/home/data/models/branch_model.dart';
import 'package:sizer/sizer.dart';

class BranchCard extends StatelessWidget {
  final BranchModel branchModel;
  const BranchCard({super.key, required this.branchModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.sp,
      width: 50.sp,
      margin: EdgeInsets.only(right: 13.sp),
      padding: EdgeInsets.all(10.sp),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.sp),
        boxShadow: [
          BoxShadow(
            color: colorPrimary2.withOpacity(0.1),
            spreadRadius: 0.4,
            blurRadius: 10,
            offset: const Offset(
              0,
              1,
            ), // changes position of shadow
          ),
        ],
      ),
      child: Image.asset(
        branchModel.img,
        color: colorPrimary2,
      ),
    );
  }
}
