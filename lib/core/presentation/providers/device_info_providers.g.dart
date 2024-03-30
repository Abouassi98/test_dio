// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_info_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$androidDeviceInfoHash() => r'c51435b90e9d760633ccf3695e97dcbb6749dd4b';

/// See also [androidDeviceInfo].
@ProviderFor(androidDeviceInfo)
final androidDeviceInfoProvider =
    FutureProvider<Option<AndroidDeviceInfo>>.internal(
  androidDeviceInfo,
  name: r'androidDeviceInfoProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$androidDeviceInfoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AndroidDeviceInfoRef = FutureProviderRef<Option<AndroidDeviceInfo>>;
String _$deviceInfoHash() => r'cb0ed53ab5737c97f2ca21a20e611c900fe7e71a';

/// See also [deviceInfo].
@ProviderFor(deviceInfo)
final deviceInfoProvider = FutureProvider<String>.internal(
  deviceInfo,
  name: r'deviceInfoProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$deviceInfoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DeviceInfoRef = FutureProviderRef<String>;
String _$versionNumberHash() => r'4e86c3fc6b331f5aee2facc0aa91cf134bfe5e8b';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [versionNumber].
@ProviderFor(versionNumber)
const versionNumberProvider = VersionNumberFamily();

/// See also [versionNumber].
class VersionNumberFamily extends Family<AsyncValue<String>> {
  /// See also [versionNumber].
  const VersionNumberFamily();

  /// See also [versionNumber].
  VersionNumberProvider call({
    bool showVersionOnly = false,
  }) {
    return VersionNumberProvider(
      showVersionOnly: showVersionOnly,
    );
  }

  @override
  VersionNumberProvider getProviderOverride(
    covariant VersionNumberProvider provider,
  ) {
    return call(
      showVersionOnly: provider.showVersionOnly,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'versionNumberProvider';
}

/// See also [versionNumber].
class VersionNumberProvider extends FutureProvider<String> {
  /// See also [versionNumber].
  VersionNumberProvider({
    bool showVersionOnly = false,
  }) : this._internal(
          (ref) => versionNumber(
            ref as VersionNumberRef,
            showVersionOnly: showVersionOnly,
          ),
          from: versionNumberProvider,
          name: r'versionNumberProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$versionNumberHash,
          dependencies: VersionNumberFamily._dependencies,
          allTransitiveDependencies:
              VersionNumberFamily._allTransitiveDependencies,
          showVersionOnly: showVersionOnly,
        );

  VersionNumberProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.showVersionOnly,
  }) : super.internal();

  final bool showVersionOnly;

  @override
  Override overrideWith(
    FutureOr<String> Function(VersionNumberRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: VersionNumberProvider._internal(
        (ref) => create(ref as VersionNumberRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        showVersionOnly: showVersionOnly,
      ),
    );
  }

  @override
  FutureProviderElement<String> createElement() {
    return _VersionNumberProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is VersionNumberProvider &&
        other.showVersionOnly == showVersionOnly;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, showVersionOnly.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin VersionNumberRef on FutureProviderRef<String> {
  /// The parameter `showVersionOnly` of this provider.
  bool get showVersionOnly;
}

class _VersionNumberProviderElement extends FutureProviderElement<String>
    with VersionNumberRef {
  _VersionNumberProviderElement(super.provider);

  @override
  bool get showVersionOnly => (origin as VersionNumberProvider).showVersionOnly;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
