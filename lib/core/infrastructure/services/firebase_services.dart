// import 'package:firebase_analytics/firebase_analytics.dart';
// import 'package:firebase_crashlytics/firebase_crashlytics.dart';
// import 'package:flutter/foundation.dart';
// import '../../presentation/utils/riverpod_framework.dart';
// import '../local/extensions/local_error_extension.dart';
// part 'firebase_services.g.dart';

// @Riverpod(keepAlive: true)
// FirebaseCrashlytics firebaseCrashlytics(
//   FirebaseCrashlyticsRef ref,
// ) =>
//     FirebaseCrashlytics.instance;

// @Riverpod(keepAlive: true)
// FirebaseAnalytics firebaseAnalytics(
//   FirebaseAnalyticsRef ref,
// ) =>
//     FirebaseAnalytics.instance;

// @Riverpod(keepAlive: true)
// FirebaseServices firebaseServices(
//   FirebaseServicesRef ref,
// ) {
//   return FirebaseServices(ref);
// }

// class FirebaseServices {
//   FirebaseServices(this.ref);
//   final FirebaseServicesRef ref;
//   Future<void> initializeFlutterFire() async {
//     return _futureErrorHandler(() async {
//       // Else only enable it in non-debug builds.
//       // You could additionally extend this to allow users to opt-in.
//       await ref.watch(firebaseCrashlyticsProvider).setCrashlyticsCollectionEnabled(!kDebugMode);
//       await ref.watch(firebaseAnalyticsProvider).setAnalyticsCollectionEnabled(!kDebugMode);
//     });
//   }
// }

// Future<T> _futureErrorHandler<T>(Future<T> Function() body) async {
//   try {
//     return await body.call();
//   } catch (e, st) {
//     final error = e.localErrorToCacheException();
//     throw Error.throwWithStackTrace(error, st);
//   }
// }
