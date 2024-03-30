import 'package:flutter/material.dart';
import '../../infrastructure/error/app_exception.dart';

extension AppErrorExtension on Object? {
  String errorMessage(BuildContext context) {
    final error = this;
    if (error is AppException) {
      return error.map(
        serverException: (ex) => ex.serverErrorMessage(context),
        cacheException: (ex) => ex.cacheErrorMessage(context),
      );
    }

    return 'unknown Error';
  }

  bool get shouldSkipError {
    return switch (this) {
      final CacheException err when err.type == CacheExceptionType.notFound =>
        true,
      //   final CacheException err when err.type == CacheExceptionType.unauthenticated => true,
      final ServerException err
          when err.type == ServerExceptionType.unauthorized =>
        true,
      _ => false,
    };
  }
}

extension _ServerErrorExtension on ServerException {
  String serverErrorMessage(BuildContext context) {
    return switch (type) {
      ServerExceptionType.general =>
        message, //Business logic error message from the backend
      ServerExceptionType.unauthorized => 'unauthorized Error',
      ServerExceptionType.forbidden => 'forbidden Error',
      ServerExceptionType.notFound => 'not Found Error',
      ServerExceptionType.conflict => 'conflict Error',
      ServerExceptionType.internal => 'internal Error',
      ServerExceptionType.serviceUnavailable => 'service Unavailable Error',
      ServerExceptionType.timeOut => 'timeout Error',
      ServerExceptionType.noInternet => 'no Internet Error',
      ServerExceptionType.authInvalidEmail => 'auth Invalid Email Error',
      ServerExceptionType.authWrongPassword => 'auth Wrong Password Error',
      ServerExceptionType.authUserNotFound => 'auth User Not Found Error',
      ServerExceptionType.authUserDisabled => 'auth User Disabled Error',
      ServerExceptionType.unknown => 'unknown Error',
      ServerExceptionType.canceled => 'canceled',
    };
  }
}

extension _CacheErrorExtension on CacheException {
  String cacheErrorMessage(BuildContext context) {
    return switch (type) {
      CacheExceptionType.general => message,
      CacheExceptionType.printerConnectionFailed => 'connection Failed',
      CacheExceptionType.printingFailed => 'printing Failed',
      _ => 'unknown Error',
    };
  }
}
