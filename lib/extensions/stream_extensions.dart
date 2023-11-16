extension StreamExtensions on Stream {
  Stream<S> whereType<S>() {
    return where((e) => e is S).cast<S>();
  }
}
