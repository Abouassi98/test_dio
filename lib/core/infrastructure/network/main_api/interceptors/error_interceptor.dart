import 'package:dio/dio.dart';
import '../../../../presentation/utils/riverpod_framework.dart';

part 'error_interceptor.g.dart';

@Riverpod(keepAlive: true)
ErrorInterceptor errorInterceptor(
  ErrorInterceptorRef ref,
) {
  return ErrorInterceptor(ref);
}

class ErrorInterceptor extends Interceptor {
  ErrorInterceptor(this.ref);
  ErrorInterceptorRef ref;
  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final statusCode = err.response?.statusCode;

    if (statusCode == 400 || statusCode == 422) {
      final data = err.response!.data as Map<dynamic, dynamic>;
      if (data['errors'] == null) {
        final newErr = err.copyWith(
          error: data['responseMessage'],
          type: DioExceptionType.badResponse,
        );
        return handler.reject(newErr);
      }

      final error = List<String>.from(data['errors'] as Iterable).join('\n');
      final newErr = err.copyWith(
        error: error,
        type: DioExceptionType.badResponse,
      );
      return handler.reject(newErr);
    }

    return handler.next(err);
  }
}
