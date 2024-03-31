import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logging/logging.dart';
import '../../infrastructure/services/logger.dart';

const _riverpodEmoji = '🏞️ ';

class ProviderLogger extends ProviderObserver {
  ProviderLogger() : _logger = Logger('Riverpod') {
    _logger.level = Level.FINER; //Turn off logging for messages whose level is under this level.
    _logger.onRecord.listen(loggerOnDataCallback(prefix: _riverpodEmoji));
  }

  final Logger _logger;

  @override
  void didAddProvider(
    ProviderBase<Object?> provider,
    Object? value,
    ProviderContainer container,
  ) {
    // This avoid duplicate logs or other logic execution,
    // until https://github.com/rrousselGit/riverpod/issues/3146 is fixed.
    if (value is Exception) return;

    _logger.fine(
      '➕ DidAddProvider: ${provider.providerName}\n'
      '=> value: $value',
    );
  }

  @override
  void didUpdateProvider(
    ProviderBase<dynamic> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    // This avoid duplicate logs or other logic execution,
    // until https://github.com/rrousselGit/riverpod/issues/3146 is fixed.
    if (newValue is AsyncError) return;

    _logger.finer(
      '🔄 DidUpdateProvider: ${provider.providerName}\n'
      '=> oldValue: $previousValue\n'
      '=> newValue: $newValue',
    );
  }

  @override
  void didDisposeProvider(
    ProviderBase<dynamic> provider,
    ProviderContainer container,
  ) {
    _logger.fine('🗑️ DidDisposeProvider: ${provider.providerName}');
  }
}

class ProviderCrashlytics extends ProviderObserver {
  ProviderCrashlytics() : _logger = Logger('Riverpod-Crashlytics') {
    _logger.level = Level.SEVERE;
    _logger.onRecord.listen(
      loggerOnDataCallback(prefix: _riverpodEmoji, logColor: LogColor.red),
    );
  }

  final Logger _logger;

  @override
  void providerDidFail(
    ProviderBase<dynamic> provider,
    Object error,
    StackTrace stackTrace,
    ProviderContainer container,
  ) {
    final isAsyncError = provider is ProviderListenable<AsyncValue>;
    // First condition optimizes the process of determining whether provider logging should be bypassed.
    if (isAsyncError) return;

    _logger.severe(
      '⛔️ ProviderDidFail: ${provider.providerName}\n'
      '=> error: $error\n'
      '=> stackTrace: $stackTrace',
    );
  }
}

extension _ProviderBaseX on ProviderBase<dynamic> {
  String get providerName => (name ?? runtimeType).toString();
}
