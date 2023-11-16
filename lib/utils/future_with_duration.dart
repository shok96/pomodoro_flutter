// @dart=3.0

/// Возвращает результат будущего, как обычно + время, которое ушло на исполнение
Future<(T, Duration)> futureWithDuration<T>(
  Future<T> future,
) async {
  final start = DateTime.now();
  final result = await future;
  final duration = DateTime.now().difference(start);
  return (result, duration);
}
