// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mediaHash() => r'e22d4048aeeb8e956f531abfc16951b272104205';

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

abstract class _$media
    extends BuildlessAutoDisposeNotifier<Query$Media$Media?> {
  late final int id;

  Query$Media$Media? build(
    int id,
  );
}

/// See also [media].
@ProviderFor(media)
const mediaProvider = MediaFamily();

/// See also [media].
class MediaFamily extends Family<Query$Media$Media?> {
  /// See also [media].
  const MediaFamily();

  /// See also [media].
  MediaProvider call(
    int id,
  ) {
    return MediaProvider(
      id,
    );
  }

  @override
  MediaProvider getProviderOverride(
    covariant MediaProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'mediaProvider';
}

/// See also [media].
class MediaProvider
    extends AutoDisposeNotifierProviderImpl<media, Query$Media$Media?> {
  /// See also [media].
  MediaProvider(
    this.id,
  ) : super.internal(
          () => media()..id = id,
          from: mediaProvider,
          name: r'mediaProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$mediaHash,
          dependencies: MediaFamily._dependencies,
          allTransitiveDependencies: MediaFamily._allTransitiveDependencies,
        );

  final int id;

  @override
  bool operator ==(Object other) {
    return other is MediaProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  Query$Media$Media? runNotifierBuild(
    covariant media notifier,
  ) {
    return notifier.build(
      id,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
