import 'dart:async';

extension FutureExtensions on Future {
  Future<void> asVoidWithTimeout(Duration duration) {
    final completer = Completer<void>();
    then((_) {
      if (completer.isCompleted) return;
      completer.complete();
    });
    Future.delayed(duration).then((_) {
      if (completer.isCompleted) return;
      completer.complete();
    });
    return completer.future;
  }
}
