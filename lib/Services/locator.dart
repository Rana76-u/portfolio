
Future<String> fetchTimeAndLocation() async {
  DateTime now = DateTime.now();
  String formattedTime = "${now.hour}:${now.minute.toString().padLeft(2, '0')}";

  return "Happy   ${_getWeekday(now.weekday)}, $formattedTime";
}

String _getWeekday(int weekday) {
  switch (weekday) {
    case DateTime.monday:
      return 'Monday';
    case DateTime.tuesday:
      return 'Tuesday';
    case DateTime.wednesday:
      return 'Wednesday';
    case DateTime.thursday:
      return 'Thursday';
    case DateTime.friday:
      return 'Friday';
    case DateTime.saturday:
      return 'Saturday';
    case DateTime.sunday:
      return 'Sunday';
    default:
      return 'Unknown day';
  }
}