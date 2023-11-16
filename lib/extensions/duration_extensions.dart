extension DurationFormatting on Duration {
  String niceFormat({bool withDays = false, bool withMilliseconds = false}) {
    final d = inDays;
    final h = inHours - (withDays ? d * Duration.hoursPerDay : 0);
    final m = inMinutes - inHours * Duration.minutesPerHour;
    final s = inSeconds - inMinutes * Duration.secondsPerMinute;
    late final ms = inMilliseconds - inSeconds * Duration.millisecondsPerSecond;

    if (isNegative || this == Duration.zero) {
      return '0:00';
    }

    final strings = [
      if (d > 0 && withDays) '$d',
      if (h > 0) '$h',
      '$m',
      '$s'.padLeft(2, '0'),
    ];

    final secondsPrecisionString = strings.join(':');

    if (!withMilliseconds) {
      return secondsPrecisionString;
    }

    final milliseconsString = ms.toString().padLeft(3, '0');
    return '$secondsPrecisionString.$milliseconsString';
  }

}
