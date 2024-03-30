part of '../utils/riverpod_framework.dart';

extension WidgetRefExtension on WidgetRef {
  bool isLoading<T>(ProviderListenable<AsyncValue<T>> provider) {
    return watch(provider.select((AsyncValue<T> s) => s.isLoading));
  }

  /// Keep listening to [AutoDisposeNotifierProvider] until a Future function is complete.
  ///
  /// This method should be called asynchronously, like inside an onPressed.
  /// It shouldn't be used directly inside the build method.
  ///
  /// This is primarily used to initialize and preserve the state of the provider
  /// when navigating to a route until that route is popped off.
  ///
  /// Note: for Navigator 2.0 use "AutoDisposeRefExtension.keepAliveUntilNoListeners"
  Future<void> listenWhile<NotifierT extends AutoDisposeNotifier<T>, T>(
    AutoDisposeNotifierProvider<NotifierT, T> provider,
    Future<void> Function(NotifierT notifier) cb,
  ) async {
    final sub = listenManual(provider, (_, __) {});
    try {
      return await cb(read(provider.notifier));
    } finally {
      sub.close();
    }
  }
}
