import 'package:flutter/material.dart';
import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:lotus_application/core/app/constants/schedule_constants.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:sizer/sizer.dart';

class CalendarWidget extends StatefulWidget {
  final DateTime seletedDate;
  final Function(DateTime) onChangeDate;
  const CalendarWidget({
    super.key,
    required this.seletedDate,
    required this.onChangeDate,
  });

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  DateTime _seletedDate = DateTime.now();

  @override
  void initState() {
    super.initState();

    _seletedDate = widget.seletedDate;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.sp),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buttonNextPreviousMonth(
                icon: PhosphorIcons.light.caretLeft,
                onTap: () {
                  setState(() {
                    _seletedDate = _seletedDate.subtract(
                      const Duration(days: 7),
                    );
                  });
                  widget.onChangeDate(_seletedDate);
                },
              ),
              Text(
                '${monthNames[_seletedDate.month - 1]} ${_seletedDate.year}',
                style: TextStyle(
                  color: colorPrimary2,
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              _buttonNextPreviousMonth(
                icon: PhosphorIcons.light.caretRight,
                onTap: () {
                  setState(() {
                    _seletedDate = _seletedDate.add(
                      const Duration(days: 7),
                    );
                  });
                  widget.onChangeDate(_seletedDate);
                },
              ),
            ],
          ),
        ),
        SizedBox(height: 13.sp),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.sp),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...getCalendarThisWeek(dateTime: _seletedDate).map(
                (date) => Column(
                  children: [
                    Text(
                      dateOfWeeks[date.weekday - 1],
                      style: TextStyle(
                        color: colorPrimary2,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 5.sp),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _seletedDate = date;
                        });
                      },
                      child: Container(
                        height: 25.sp,
                        width: 25.sp,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                          border: _seletedDate.day == date.day
                              ? Border.all(
                                  width: 0.5.sp,
                                  color: colorPrimary2,
                                )
                              : null,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          date.day.toString(),
                          style: TextStyle(
                            color: colorPrimary2,
                            fontSize: 10.sp,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buttonNextPreviousMonth({
    required IconData icon,
    required Function()? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            width: 0.4.sp,
            color: colorPrimary2,
          ),
          shape: BoxShape.circle,
        ),
        padding: EdgeInsets.all(6.sp),
        child: Icon(
          icon,
          color: colorPrimary2,
          size: 12.sp,
        ),
      ),
    );
  }
}
