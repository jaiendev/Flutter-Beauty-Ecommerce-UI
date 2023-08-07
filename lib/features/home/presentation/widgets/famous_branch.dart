import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:lotus_application/core/app/constants/assets_icon_image.dart';
import 'package:lotus_application/features/home/data/models/branch_model.dart';
import 'package:lotus_application/features/home/presentation/widgets/branch_card.dart';
import 'package:lotus_application/features/home/presentation/widgets/title_see_all.dart';
import 'package:sizer/sizer.dart';

class FamousBranch extends StatelessWidget {
  const FamousBranch({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleSeeAll(
          title: 'Famous branches',
          icon: AssetsIconImage.icFamous,
        ),
        SizedBox(
          height: 70.sp,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: listBranchFake.length,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(
              horizontal: 12.sp,
              vertical: 10.sp,
            ),
            itemBuilder: (context, index) {
              return BranchCard(
                branchModel: listBranchFake[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
