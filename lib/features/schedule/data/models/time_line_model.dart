class TimelineModel {
  final String title;
  final String description;
  final DateTime startTime;
  final int duration;
  TimelineModel({
    required this.title,
    required this.description,
    required this.startTime,
    this.duration = 60,
  });

  bool get getTimelinePresent =>
      startTime.add(Duration(minutes: duration)).isAfter(DateTime.now()) &&
      startTime.isBefore(DateTime.now());
}

final List<TimelineModel> timeLineFake = [
  TimelineModel(
    title: 'Foot/neck/shoulder massage',
    description: 'Massage gently, do not use too much force, priority is given to female massage',
    startTime: DateTime.now().subtract(const Duration(hours: 2)),
  ),
  TimelineModel(
    title: 'Foot/neck/shoulder massage',
    description: 'Massage gently, do not use too much force, priority is given to female massage',
    startTime: DateTime.now().subtract(const Duration(hours: 1)),
  ),
  TimelineModel(
    title: 'Foot/neck/shoulder massage',
    description: 'Massage gently, do not use too much force, priority is given to female massage',
    startTime: DateTime.now(),
  ),
  TimelineModel(
    title: 'Foot/neck/shoulder massage',
    description: 'Massage gently, do not use too much force, priority is given to female massage',
    startTime: DateTime.now().add(const Duration(hours: 1)),
  ),
];
