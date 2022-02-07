extension DartExt<T> on T {
  T also(Function(T) block) {
    block(this);
    return this;
  }
}