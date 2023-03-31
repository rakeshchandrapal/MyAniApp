// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sharedPrefHash() => r'a13c6cf227147eed1d774af75be4a529dedc682e';

/// See also [sharedPref].
@ProviderFor(sharedPref)
final sharedPrefProvider = Provider<SharedPreferences>.internal(
  sharedPref,
  name: r'sharedPrefProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$sharedPrefHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SharedPrefRef = ProviderRef<SharedPreferences>;
String _$settingsHash() => r'b90d2b2ff5d159973ac65de52ca1911a8b379471';

/// See also [Settings].
@ProviderFor(Settings)
final settingsProvider = NotifierProvider<Settings, Setting>.internal(
  Settings.new,
  name: r'settingsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$settingsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Settings = Notifier<Setting>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
