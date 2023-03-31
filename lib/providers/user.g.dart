// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchCurrentUserHash() => r'a17533fbe60b2c060dfdf6519164091f39548939';

/// See also [fetchCurrentUser].
@ProviderFor(fetchCurrentUser)
final fetchCurrentUserProvider = FutureProvider<Fragment$ThisUser?>.internal(
  fetchCurrentUser,
  name: r'fetchCurrentUserProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fetchCurrentUserHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FetchCurrentUserRef = FutureProviderRef<Fragment$ThisUser?>;
String _$userHash() => r'e0b6e68f4fdea3b7774073a6776fc9ea2ef84102';

/// See also [User].
@ProviderFor(User)
final userProvider = AsyncNotifierProvider<User, Fragment$ThisUser?>.internal(
  User.new,
  name: r'userProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$User = AsyncNotifier<Fragment$ThisUser?>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
