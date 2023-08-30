import 'package:intl/intl.dart';

class DateTimeHelper {
  String getHourMinutes(DateTime dateTime) {
    return DateFormat('hh:mm a').format(dateTime);
  }
}
