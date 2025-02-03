extension ListExtensions<E> on List<E> {
  List<E> insertBetween(E separator) {
    final List<E> result = [];
    for (var i = 0; i < length; i++) {
      if (i > 0) result.add(separator);
      result.add(this[i]);
    }
    return result;
  }
}
