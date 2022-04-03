typedef ValueCallback<T> = void Function(T);
typedef ValueCallback2<T, U> = void Function(T, U);

typedef AsyncValueCallback<T> = Future<void> Function(T);
typedef AsyncValueCallback2<T, U> = Future<void> Function(T, U);
