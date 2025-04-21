// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'core_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getSIMCountryCodeHash() => r'9b41e9f1f8d812e934fb6cf2dfbc219a6ddd8a3c';

/// See also [getSIMCountryCode].
@ProviderFor(getSIMCountryCode)
final getSIMCountryCodeProvider = AutoDisposeFutureProvider<String>.internal(
  getSIMCountryCode,
  name: r'getSIMCountryCodeProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getSIMCountryCodeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetSIMCountryCodeRef = AutoDisposeFutureProviderRef<String>;
String _$getCountriesHash() => r'a1f796dffddd58ea7f1db0da8c49b0c74dbb0d41';

/// See also [getCountries].
@ProviderFor(getCountries)
final getCountriesProvider = AutoDisposeFutureProvider<List<Country>>.internal(
  getCountries,
  name: r'getCountriesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getCountriesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetCountriesRef = AutoDisposeFutureProviderRef<List<Country>>;
String _$getAppConfigHash() => r'41cc53202d48dcd2ed7841b987662955d8a59724';

/// See also [getAppConfig].
@ProviderFor(getAppConfig)
final getAppConfigProvider = AutoDisposeFutureProvider<AppConfig?>.internal(
  getAppConfig,
  name: r'getAppConfigProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getAppConfigHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetAppConfigRef = AutoDisposeFutureProviderRef<AppConfig?>;
String _$getAppModulesHash() => r'4b97974136619f79e1c88169b4d6942492a5db0d';

/// See also [getAppModules].
@ProviderFor(getAppModules)
final getAppModulesProvider =
    AutoDisposeFutureProvider<List<AppModule>>.internal(
  getAppModules,
  name: r'getAppModulesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getAppModulesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetAppModulesRef = AutoDisposeFutureProviderRef<List<AppModule>>;
String _$getCurrentUserHash() => r'f8084aa2b2fdb0a42af60201b0d497b47c2bfd77';

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

/// See also [getCurrentUser].
@ProviderFor(getCurrentUser)
const getCurrentUserProvider = GetCurrentUserFamily();

/// See also [getCurrentUser].
class GetCurrentUserFamily extends Family<AsyncValue<UserInfo?>> {
  /// See also [getCurrentUser].
  const GetCurrentUserFamily();

  /// See also [getCurrentUser].
  GetCurrentUserProvider call(
    String uid,
  ) {
    return GetCurrentUserProvider(
      uid,
    );
  }

  @override
  GetCurrentUserProvider getProviderOverride(
    covariant GetCurrentUserProvider provider,
  ) {
    return call(
      provider.uid,
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
  String? get name => r'getCurrentUserProvider';
}

/// See also [getCurrentUser].
class GetCurrentUserProvider extends AutoDisposeFutureProvider<UserInfo?> {
  /// See also [getCurrentUser].
  GetCurrentUserProvider(
    String uid,
  ) : this._internal(
          (ref) => getCurrentUser(
            ref as GetCurrentUserRef,
            uid,
          ),
          from: getCurrentUserProvider,
          name: r'getCurrentUserProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getCurrentUserHash,
          dependencies: GetCurrentUserFamily._dependencies,
          allTransitiveDependencies:
              GetCurrentUserFamily._allTransitiveDependencies,
          uid: uid,
        );

  GetCurrentUserProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.uid,
  }) : super.internal();

  final String uid;

  @override
  Override overrideWith(
    FutureOr<UserInfo?> Function(GetCurrentUserRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetCurrentUserProvider._internal(
        (ref) => create(ref as GetCurrentUserRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        uid: uid,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<UserInfo?> createElement() {
    return _GetCurrentUserProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetCurrentUserProvider && other.uid == uid;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, uid.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetCurrentUserRef on AutoDisposeFutureProviderRef<UserInfo?> {
  /// The parameter `uid` of this provider.
  String get uid;
}

class _GetCurrentUserProviderElement
    extends AutoDisposeFutureProviderElement<UserInfo?> with GetCurrentUserRef {
  _GetCurrentUserProviderElement(super.provider);

  @override
  String get uid => (origin as GetCurrentUserProvider).uid;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
