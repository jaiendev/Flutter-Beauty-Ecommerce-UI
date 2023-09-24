import 'package:intl/intl.dart';
import 'package:lotus_application/core/app/constants/schedule_constants.dart';

class DateTimeHelper {
  String getHourMinutes(DateTime dateTime) {
    return DateFormat('hh:mm a').format(dateTime);
  }

  String getTimeChatCard(DateTime dateTime) {
    if (dateTime.difference(DateTime.now()).inDays.abs() <= 7) {
      if (dateTime
              .difference(
                DateTime(
                  DateTime.now().year,
                  DateTime.now().month,
                  DateTime.now().day,
                ),
              )
              .inHours
              .abs() <
          24) {
        return DateFormat('hh:mm a').format(dateTime);
      }
      return dateFullNameOfWeeks[dateTime.weekday - 1];
    }

    return DateFormat('dd/MM/yyyy').format(dateTime);
  }
}
