List<String> dateOfWeeks = [
  'Mon',
  'Tue',
  'Wed',
  'Thu',
  'Fri',
  'Sat',
  'Sun',
];

const List<int> dayCountForMonth = [
  31,
  28,
  31,
  30,
  31,
  30,
  31,
  31,
  30,
  31,
  30,
  31,
];

List<String> monthNames = [
  'January',
  'February',
  'March',
  'April',
  'May',
  'June',
  'Juluy',
  'August',
  'September',
  'October',
  'November',
  'December',
];

List dayToWeekday({required int month, required int year}) {
  final dayToWeekday = [];
  final dayCountForMonthResponse =
      month == 2 ? dayCountForFebruary(year) : dayCountForMonth[month - 1];
  // vì hiển thị lịch từ chủ nhật, ta thêm 0 vào những ngày trong tuần trước ngày 1
  final fistDayRelatedWeekday =
      relatedWeekday(day: 1, month: month, year: year);
  if (fistDayRelatedWeekday != 7) {
    // nếu ngày đầu tháng là chủ nhật thì không thêm
    for (var i = 0; i < fistDayRelatedWeekday; i++) {
      dayToWeekday.add(0);
    }
  }

  for (var i = 1; i <= dayCountForMonthResponse; i++) {
    dayToWeekday.add(i);
  }
  return dayToWeekday;
}

int relatedWeekday({
  required int month,
  required int year,
  required int day,
}) {
  final monthToString = addZeroPrefix(month);
  final dayToString = addZeroPrefix(day);
  return DateTime.parse('$year-$monthToString-$dayToString').weekday;
  // thứ hai là số 1
}

String addZeroPrefix(number) =>
    '${'00'.substring(number.toString().length)}$number';

int dayCountForFebruary(year) {
  return year % 4 == 0 ? 29 : 28;
}

List<DateTime> getCalendarThisWeek({DateTime? dateTime}) {
  final DateTime nowDate = dateTime ?? DateTime.now();
  final int year = nowDate.year;
  final int month = nowDate.month;
  final int day = nowDate.day;
  List<DateTime> thisWeek = [];
  final List thisMonth = getCalendarThisMonth(dateTime: nowDate);
  for (final week in thisMonth) {
    if (week.contains(DateTime(year, month, day))) {
      thisWeek = week;
    }
  }

  return thisWeek;
}

List<List<DateTime>> getCalendarThisMonth({DateTime? dateTime}) {
  final inputDate = dateTime ?? DateTime.now();
  final thisMonth = inputDate.month;
  final thisYear = inputDate.year;
  // print('================');
  // print(inputDate);
  final int firstDayOfMonth = DateTime(inputDate.year, thisMonth).weekday;
  final List<List<DateTime>> thisMonthList = [];
  int date = 1;
  while (date <= dayCountForMonth[thisMonth - 1]) {
    final List<DateTime> week = [];
    for (int i = 1; i < 8; i++) {
      if (date == 1) {
        if (i < firstDayOfMonth) {
          week.add(
            DateTime(thisYear, thisMonth)
                .subtract(Duration(days: firstDayOfMonth - i)),
          );
        } else {
          week.add(DateTime(thisYear, thisMonth, date));
          date++;
        }
      } else {
        if (date <= dayCountForMonth[thisMonth - 1]) {
          week.add(DateTime(thisYear, thisMonth, date));
        } else {
          week.add(
            week[week.length - 1].add(const Duration(days: 1)),
          );
        }
        date++;
      }
    }
    thisMonthList.add(week);
  }

  return thisMonthList;
}


List<String> dateFullNameOfWeeks = [
  'Monday',
  'Tueday',
  'Wednesday',
  'Thursday',
  'Friday',
  'Saturday',
  'Sunday',
];
