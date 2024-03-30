import 'package:dio/dio.dart';
import '../main_api_config.dart';

class ResponseInterceptor extends Interceptor {
  @override
  Future<void> onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) async {
    if (response.data case final Map<dynamic, dynamic> data) {
      final avoidExtractingData =
          response.requestOptions.extra[MainApiConfig.avoidExtractingData] !=
              null;
      final supportEmptyList = response
              .requestOptions.extra[MainApiConfig.supportEmptyListExtraKey] !=
          null;
      if (data['data'] != null && !avoidExtractingData) {
        return handler.next(response..data = data['data']);
      } else if (supportEmptyList) {
        return handler.next(response..data = <dynamic>[]);
      }
    }
    // if (response.statusCode == 202) {
    //   final data = response.data as Map<dynamic, dynamic>;
    //   final piClientSecret = data['clientSecret'] as String;

    //   await StripeFacade.confirmPayment(piClientSecret);

    //   return handler.next(response..data = {'piClientSecret': piClientSecret});
    // }
    return handler.next(response);
  }
}
