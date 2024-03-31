import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logging/logging.dart';
import 'core/presentation/providers/provider_observers.dart';
import 'core/presentation/utils/riverpod_framework.dart';

abstract class Bootstrap {
  static Future<ProviderContainer> init() async {
    final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    // to ensure we can communicate with native side

    // Only call clearSavedSettings() during testing to reset internal values.
    //await Upgrader.clearSavedSettings(); // REMOVE this for release builds

    _setupLogger();

    final container = ProviderContainer(observers: [ProviderLogger(), ProviderCrashlytics()]);
    // Warming-up androidDeviceInfoProvider to be used synchronously at AppTheme to setup the navigation bar
    // behavior for older Android versions without flickering (of the navigation bar) when app starts.

    // This Prevent closing native splash screen until we finish warming-up custom splash images.
    // App layout will be built but not displayed.
    widgetsBinding.deferFirstFrame();
    widgetsBinding.addPostFrameCallback((_) async {
      // When the native splash screen is fullscreen, iOS will not automatically show the notification
      // bar when the app loads. To show it, setEnabledSystemUIMode has to be explicitly set:
      await SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.edgeToEdge, // https://github.com/flutter/flutter/issues/105714
      );

      // Closes splash screen, and show the app layout.
      widgetsBinding.allowFirstFrame();
    });

    return container;
  }
}

void _setupLogger() {
  hierarchicalLoggingEnabled = true;
  Logger.root.level = Level.ALL;
}
