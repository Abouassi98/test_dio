part of '../providers/provider_utils.dart';

extension AutoDisposeRefExtension<T> on AutoDisposeRef<T> {
  CancelToken cancelToken() {
    // An object from package:dio that allows cancelling pending network requests
    // if they are no-longer needed.
    final cancelToken = CancelToken();
    onDispose(cancelToken.cancel);
    return cancelToken;
  }
}
