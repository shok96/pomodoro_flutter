extension ListGroupExrension<T> on List<T> {
  /// Returns 2-dimentional list with fixed second dimention length == [groupSize].
  /// Complexity: O(n)
  List<List<T>> groupBy(int groupSize) {
    final result = <List<T>>[];
    var groupBuffer = <T>[];
    for (final post in this) {
      groupBuffer.add(post);
      if (groupBuffer.length == groupSize) {
        result.add(groupBuffer);
        groupBuffer = <T>[];
      }
    }
    if (groupBuffer.isNotEmpty) {
      result.add(groupBuffer);
    }
    return result;
  }

  void assignAll(Iterable<T> items) {
    clear();
    addAll(items);
  }

  T? getOrNull(int index) {
    return switch (index) {
      >= 0 when index < length => this[index],
      _ => null,
    };
  }

  List<T> withDivider(T divider) {
    return [
      for (final item in this) ...[item, divider],
    ]..removeLast();
  }
}

extension ListGroupExrensionString<T extends String> on List<T> {
  bool containsStringElement(T data) =>
      any((element) => data.contains(element));
}

extension Unique<E, Id> on List<E> {
  List<E> unique([Id Function(E element)? id, bool inplace = true]) {
    final ids = <dynamic>{};
    final list = inplace ? this : List<E>.from(this);
    list.retainWhere((x) => ids.add(id != null ? id(x) : x as Id));
    return list;
  }
}
