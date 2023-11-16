extension StringExtension on String {
  String trimAndRemoveNewLineAbuse() {
    return trim().replaceAll(RegExp('(\\n)\\1{2,}'), '\n\n');
  }

  String toSentanceCase() {
    if (length < 2) return toUpperCase();
    final first = substring(0, 1).toUpperCase();
    final rest = substring(1).toLowerCase();
    return '$first$rest';
  }
}
