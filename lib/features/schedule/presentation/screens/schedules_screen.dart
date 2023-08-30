import 'package:flutter/material.dart';
import 'package:lotus_application/core/app/constants/constants.dart';
import 'package:lotus_application/core/utils/app_bar/app_bar_none.dart';
import 'package:lotus_application/features/profile/presentation/widgets/calendar_widget.dart';
import 'package:lotus_application/features/schedule/data/models/time_line_model.dart';
import 'package:lotus_application/features/schedule/presentation/widgets/app_bar_schedule.dart';
import 'package:lotus_application/features/schedule/presentation/widgets/time_line_card.dart';
import 'package:sizer/sizer.dart';

class SchedulesScreen extends StatefulWidget {
  const SchedulesScreen({super.key});

  @override
  State<SchedulesScreen> createState() => _SchedulesScreenState();
}

class _SchedulesScreenState extends State<SchedulesScreen> {
  DateTime _seletedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBarNone(
        context: context,
        brightness: Brightness.light,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const AppBarSchedules(),
            SizedBox(height: 18.sp),
            CalendarWidget(
              seletedDate: _seletedDate,
              onChangeDate: (date) {
                setState(() {
                  _seletedDate = date;
                });
              },
            ),
            SizedBox(height: 15.sp),
            dividerChatBig,
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: timeLineFake.length,
                padding: EdgeInsets.symmetric(vertical: 13.sp),
                itemBuilder: (context, index) {
                  return TimelineCard(
                    timelineModel: timeLineFake[index],
                    isTimelinePresent: timeLineFake[index].getTimelinePresent,
                    isCheckLast: index == timeLineFake.length - 1,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
