import 'package:json_annotation/json_annotation.dart';
import 'package:intl/intl.dart';

class CustomDateTimeConverter implements JsonConverter<DateTime, String> {
  const CustomDateTimeConverter();

  @override
  DateTime fromJson(String timeString) {
    DateFormat format = DateFormat("HH:mm:ss");
    DateTime time = format.parse(timeString);
    DateTime now = DateTime.now();
    return DateTime(
      now.year,
      now.month,
      now.day,
      time.hour,
      time.minute,
      time.second,
    );
  }

  @override
  String toJson(DateTime json) => json.toIso8601String();
}
