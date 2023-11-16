import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension DateTimeFormatting on DateTime {
  String timeOnlyNice(String languageCode) {
    final timeFormatter = DateFormat.jm(languageCode);
    return timeFormatter.format(toLocal());
  }


  String dateOnly(String languageCode) {
    final dayFormatter = DateFormat.yMd(languageCode);
    return dayFormatter.format(this);
  }

  /// Feb, 26, 2023
  String dateOnlyNiceCommaSeporated(
    String languageCode, {
    bool isFullMonth = false,
  }) {
    final m = (isFullMonth
            ? DateFormat.MMMM(languageCode)
            : DateFormat.MMM(languageCode))
        .format(this);
    final d = day.toString().padLeft(2, '0');
    return '$m, $d, $year';
  }

  String niceFormat(String languageCode) {
    final dayFormatter = DateFormat.MMMd(languageCode);
    final formattedDay = dayFormatter.format(this);
    final formattedTime = timeOnlyNice(languageCode);
    return '$formattedDay, $formattedTime';
  }

  /// 08:00 — 15:00
  String hoursIntervalNice(String languageCode, DateTime endDate) {
    final formattedStart = timeOnlyNice(languageCode);
    final formattedEnd = endDate.timeOnlyNice(languageCode);
    return '$formattedStart — $formattedEnd';
  }

  /// 10 Feb
  String shortDate(String languageCode) {
    final dateFormatter = DateFormat.MMMd(languageCode);
    return dateFormatter.format(this);
  }

  /// 10 February
  String fullDate(String languageCode) {
    final dateFormatter = DateFormat.MMMMd(languageCode);
    return dateFormatter.format(this);
  }

  /// Thursday
  String weekdayOnlyFull(String languageCode) {
    final dateFormatter = DateFormat.EEEE(languageCode);
    return dateFormatter.format(this);
  }

  DateTime tomorrow() {
    final plus24h = add(const Duration(days: 1));
    return DateTime(plus24h.year, plus24h.month, plus24h.day);
  }

  DateTime dayStart() {
    return DateTime(year, month, day);
  }

  DateTime dayEnd() {
    return DateTime(year, month, day, 23, 59, 59);
  }

  int integerDaysGap(DateTime other) {
    return difference(other).inHours ~/ 24;
  }

  bool isYesterday() {
    return add(const Duration(days: 1)).isToday();
  }

  bool isToday() {
    final today = DateTime.now();
    return isSameDay(today);
  }

  bool isNotThisYear() {
    final today = DateTime.now();
    return today.year != year;
  }

  bool isSameDay(DateTime other) {
    return other.year == year && other.month == month && other.day == day;
  }

  /// format: 'Y-m-d\TH:i:s'
  String toServerFormat() {
    final utcTime = toUtc();
    final y = utcTime.year;
    final m = utcTime.month.toString().padLeft(2, '0');
    final d = utcTime.day.toString().padLeft(2, '0');
    final h = utcTime.hour.toString().padLeft(2, '0');
    final i = utcTime.minute.toString().padLeft(2, '0');
    final s = utcTime.second.toString().padLeft(2, '0');
    return '$y-$m-${d}T$h:$i:$s';
  }

  int getTimeStamp() => millisecondsSinceEpoch;
}
