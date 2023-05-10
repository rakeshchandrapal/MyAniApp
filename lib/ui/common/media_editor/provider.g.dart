// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mediaEditorHash() => r'afcc2e3d818ee9ae2d5373634ddf07d7dce74e9c';

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

abstract class _$MediaEditor
    extends BuildlessAutoDisposeNotifier<Fragment$MediaListEntry?> {
  late final Fragment$Media media;

  Fragment$MediaListEntry? build(
    Fragment$Media media,
  );
}

/// See also [MediaEditor].
@ProviderFor(MediaEditor)
const mediaEditorProvider = MediaEditorFamily();

/// See also [MediaEditor].
class MediaEditorFamily extends Family<Fragment$MediaListEntry?> {
  /// See also [MediaEditor].
  const MediaEditorFamily();

  /// See also [MediaEditor].
  MediaEditorProvider call(
    Fragment$Media media,
  ) {
    return MediaEditorProvider(
      media,
    );
  }

  @override
  MediaEditorProvider getProviderOverride(
    covariant MediaEditorProvider provider,
  ) {
    return call(
      provider.media,
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
  String? get name => r'mediaEditorProvider';
}

/// See also [MediaEditor].
class MediaEditorProvider extends AutoDisposeNotifierProviderImpl<MediaEditor,
    Fragment$MediaListEntry?> {
  /// See also [MediaEditor].
  MediaEditorProvider(
    this.media,
  ) : super.internal(
          () => MediaEditor()..media = media,
          from: mediaEditorProvider,
          name: r'mediaEditorProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$mediaEditorHash,
          dependencies: MediaEditorFamily._dependencies,
          allTransitiveDependencies:
              MediaEditorFamily._allTransitiveDependencies,
        );

  final Fragment$Media media;

  @override
  bool operator ==(Object other) {
    return other is MediaEditorProvider && other.media == media;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, media.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  Fragment$MediaListEntry? runNotifierBuild(
    covariant MediaEditor notifier,
  ) {
    return notifier.build(
      media,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
