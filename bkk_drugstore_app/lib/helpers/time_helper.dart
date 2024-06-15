class TimeHelper {
  bool isInOpenCloseTime(DateTime open, DateTime close) {
    DateTime now = DateTime.now();
    return now.isAfter(open) && now.isBefore(close);
  }

  bool is24Hrs(DateTime open, DateTime close) => open.hour == 0 && close.hour == 0;
}
