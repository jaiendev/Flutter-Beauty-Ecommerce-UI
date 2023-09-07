import 'package:flutter/material.dart';
import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:lotus_application/core/app/constants/assets_icon_image.dart';
import 'package:lotus_application/core/helpers/date_time_helper.dart';
import 'package:lotus_application/features/home/presentation/widgets/icon_text_mini.dart';
import 'package:lotus_application/features/schedule/data/models/time_line_model.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:sizer/sizer.dart';

class TimelineCard extends StatelessWidget {
  final TimelineModel timelineModel;
  final bool isTimelinePresent;
  final bool isCheckLast;
  const TimelineCard({
    super.key,
    required this.timelineModel,
    this.isTimelinePresent = false,
    this.isCheckLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16.sp,
      ).add(EdgeInsets.only(bottom: 8.sp)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 15.sp,
            child: Column(
              children: [
                Container(
                  padding: isTimelinePresent ? EdgeInsets.all(1.2.sp) : null,
                  decoration: isTimelinePresent
                      ? BoxDecoration(
                          border: Border.all(
                            width: 1.2.sp,
                            color: colorPrimary2,
                          ),
                          shape: BoxShape.circle,
                        )
                      : null,
                  child: Container(
                    height: isTimelinePresent ? 12.sp : 8.sp,
                    width: isTimelinePresent ? 12.sp : 8.sp,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isTimelinePresent
                          ? colorPrimary2
                          : Colors.transparent,
                      border: Border.all(
                        width: isTimelinePresent ? 1.2.sp : 0.7.sp,
                        color: colorPrimary2,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 3.sp),
                Visibility(
                  visible: !isCheckLast,
                  child: Container(
                    width: isTimelinePresent ? 1.2.sp : 0.7.sp,
                    height: isTimelinePresent ? 140.sp : 60.sp,
                    color: colorPrimary2,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 10.sp),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 10.sp,
                horizontal: 16.sp,
              ),
              decoration: BoxDecoration(
                color: isTimelinePresent
                    ? colorPrimary2.withOpacity(0.96)
                    : colorGrey.withOpacity(0.09),
                borderRadius: BorderRadius.circular(10.sp),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          timelineModel.title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: isTimelinePresent
                                ? Colors.white
                                : colorPrimary2,
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Text(
                        DateTimeHelper()
                            .getHourMinutes(timelineModel.startTime),
                        style: TextStyle(
                          color: isTimelinePresent
                              ? Colors.grey.shade300
                              : Colors.grey.shade800,
                          fontSize: 10.sp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.sp),
                  Text(
                    timelineModel.description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: isTimelinePresent
                          ? Colors.grey.shade300
                          : Colors.grey.shade800,
                      fontSize: 10.sp,
                    ),
                  ),
                  Visibility(
                    visible: isTimelinePresent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20.sp),
                            IconTextMini(
                              icon: PhosphorIcons.light.house,
                              description: 'Vyan Home Spa',
                              fontSize: 10.sp,
                              color: isTimelinePresent
                                  ? Colors.grey.shade300
                                  : colorPrimary2,
                              sizeIcon: 14.sp,
                            ),
                            SizedBox(height: 8.sp),
                            IconTextMini(
                              icon: PhosphorIcons.light.currencyCircleDollar,
                              description: r'40.2$',
                              fontSize: 10.sp,
                              color: isTimelinePresent
                                  ? Colors.grey.shade300
                                  : colorPrimary2,
                              sizeIcon: 14.sp,
                            ),
                            SizedBox(height: 8.sp),
                            IconTextMini(
                              icon: PhosphorIcons.light.alarm,
                              description: '${timelineModel.duration} minutes',
                              fontSize: 10.sp,
                              color: isTimelinePresent
                                  ? Colors.grey.shade300
                                  : colorPrimary2,
                              sizeIcon: 14.sp,
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(3.sp),
                          ),
                          padding: EdgeInsets.all(4.sp),
                          child: Image.asset(
                            AssetsIconImage.icLoading,
                            height: 16.sp,
                            width: 16.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
