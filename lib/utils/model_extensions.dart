extension DynamicConstructor on List<dynamic> {
  /// Transform List of dynamics to Model.fromJson
  ///
  /// Example: (json['data'] as List<dynamic>).toListIterableOf(Model.fromJson)
  Iterable<T?> toIterableOf<T>(
    T Function(Map<String, dynamic>) constructor,
  ) {
    return map((dynamic e) {
      return e != null ? constructor(e as Map<String, dynamic>) : null;
    });
  }

  /// Transform List of dynamics to Model.fromJson
  ///
  /// Example: (json['data'] as List<dynamic>).toListJsonOf(Model.fromJson)
  List<T?> toListJsonOf<T>(T Function(Map<String, dynamic>) constructor) {
    return toIterableOf(constructor).toList();
  }
}

extension IterableNormalizer<T> on Iterable<T?> {
  /// Helper to eliminate null values inside iterable
  Iterable<T> normalize() {
    return whereType<T>();
  }

  /// Helper to eliminate null values inside iterable and transform to list
  List<T> normalizeAsList() {
    return whereType<T>().toList();
  }
}
