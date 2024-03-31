import 'package:dio/dio.dart';
import '../../../../presentation/utils/riverpod_framework.dart';
import 'main_api_dio_providers.dart';

part 'main_api_facade.g.dart';

@Riverpod(keepAlive: true)
MainApiFacade mainApiFacade(MainApiFacadeRef ref) {
  return MainApiFacade(
    dio: ref.watch(
      mainApiDioProvider,
    ),
  );
}

class MainApiFacade {
  MainApiFacade({
    required this.dio,
  });

  final Dio dio;

  Future<Response<T>> getData<T>({
    required String path,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    return dio.get(
      path,
      queryParameters: queryParameters,
      //Every request can pass an Options object which will be merged with Dio.options

      options: options,
      cancelToken: cancelToken,
    );
  }
}
