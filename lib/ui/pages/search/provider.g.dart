// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchHash() => r'ea7a86c6ba6f3a5b7327d182a4700aef35e9a06a';

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

abstract class _$Search
    extends BuildlessAutoDisposeNotifier<QueryResult<Query$Search>?> {
  late final Variables$Query$Search vars;
  late final bool fetch;

  QueryResult<Query$Search>? build(
    Variables$Query$Search vars, {
    bool fetch = true,
  });
}

/// See also [Search].
@ProviderFor(Search)
const searchProvider = SearchFamily();

/// See also [Search].
class SearchFamily extends Family<QueryResult<Query$Search>?> {
  /// See also [Search].
  const SearchFamily();

  /// See also [Search].
  SearchProvider call(
    Variables$Query$Search vars, {
    bool fetch = true,
  }) {
    return SearchProvider(
      vars,
      fetch: fetch,
    );
  }

  @override
  SearchProvider getProviderOverride(
    covariant SearchProvider provider,
  ) {
    return call(
      provider.vars,
      fetch: provider.fetch,
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
  String? get name => r'searchProvider';
}

/// See also [Search].
class SearchProvider extends AutoDisposeNotifierProviderImpl<Search,
    QueryResult<Query$Search>?> {
  /// See also [Search].
  SearchProvider(
    this.vars, {
    this.fetch = true,
  }) : super.internal(
          () => Search()
            ..vars = vars
            ..fetch = fetch,
          from: searchProvider,
          name: r'searchProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchHash,
          dependencies: SearchFamily._dependencies,
          allTransitiveDependencies: SearchFamily._allTransitiveDependencies,
        );

  final Variables$Query$Search vars;
  final bool fetch;

  @override
  bool operator ==(Object other) {
    return other is SearchProvider &&
        other.vars == vars &&
        other.fetch == fetch;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, vars.hashCode);
    hash = _SystemHash.combine(hash, fetch.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  QueryResult<Query$Search>? runNotifierBuild(
    covariant Search notifier,
  ) {
    return notifier.build(
      vars,
      fetch: fetch,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
