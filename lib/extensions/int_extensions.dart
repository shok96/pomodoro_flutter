extension IntAsBool on int {
  bool toBool() => this == 1;
}

extension IntViewExtensions on int {
  String counterShort() {
    if (this < 1000) return toString();
    if (this < 10000) {
      final thousands = this / 1000;
      return '${thousands.toStringAsFixed(1)}k';
    }
    if (this < 1000000) {
      final thousands = this ~/ 1000;
      return '${thousands}k';
    }
    final millions = this / 1000000;
    return '${millions.toStringAsFixed(1)}M';
  }

  String counterDivided([String divider = ' ']) {
    if (this < 1000) return toString();
    final digitsReversed = toString().split('').reversed;
    final copy = [...digitsReversed];
    var shift = 0;
    for (var i = 3; i < digitsReversed.length; i += 3) {
      copy.insert(i + shift, divider);
      shift++;
    }
    return copy.reversed.join().trim();
  }
}
