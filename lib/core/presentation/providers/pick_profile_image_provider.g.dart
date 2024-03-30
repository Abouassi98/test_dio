// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pick_profile_image_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pickImageStateHash() => r'89c4314af208ce500177668cf7bc7ec2736f66d4';

/// See also [pickImageState].
@ProviderFor(pickImageState)
final pickImageStateProvider = AutoDisposeFutureProvider<Option<File>>.internal(
  pickImageState,
  name: r'pickImageStateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$pickImageStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PickImageStateRef = AutoDisposeFutureProviderRef<Option<File>>;
String _$pickImageEventHash() => r'a5ef90596a8d2127cc8de046be29b072897c9605';

/// See also [PickImageEvent].
@ProviderFor(PickImageEvent)
final pickImageEventProvider = AutoDisposeNotifierProvider<PickImageEvent,
    Option<Event<ImagePickerParams>>>.internal(
  PickImageEvent.new,
  name: r'pickImageEventProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$pickImageEventHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PickImageEvent
    = AutoDisposeNotifier<Option<Event<ImagePickerParams>>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
