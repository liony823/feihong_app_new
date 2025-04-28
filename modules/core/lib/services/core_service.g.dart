// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'core_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getSIMCountryCodeHash() => r'ffb312d2fa2bed6c6eee6d66a4e1e778dbeff25e';

/// See also [getSIMCountryCode].
@ProviderFor(getSIMCountryCode)
final getSIMCountryCodeProvider = FutureProvider<String>.internal(
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
typedef GetSIMCountryCodeRef = FutureProviderRef<String>;
String _$getCountriesHash() => r'386dbfa9231ef9c15da3e8b6ab671e96d80c3412';

/// See also [getCountries].
@ProviderFor(getCountries)
final getCountriesProvider = FutureProvider<List<Country>>.internal(
  getCountries,
  name: r'getCountriesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getCountriesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetCountriesRef = FutureProviderRef<List<Country>>;
String _$getAppConfigHash() => r'18fc89b9551e4540ec99c947113aa96d53f59d99';

/// See also [getAppConfig].
@ProviderFor(getAppConfig)
final getAppConfigProvider = FutureProvider<AppConfig?>.internal(
  getAppConfig,
  name: r'getAppConfigProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getAppConfigHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetAppConfigRef = FutureProviderRef<AppConfig?>;
String _$getAppModulesHash() => r'a7ac5df8c5f2b74ccd53b7bbc9624ef9d9f28444';

/// See also [getAppModules].
@ProviderFor(getAppModules)
final getAppModulesProvider = FutureProvider<List<AppModule>>.internal(
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
typedef GetAppModulesRef = FutureProviderRef<List<AppModule>>;
String _$getCurrentUserHash() => r'3e6d9df5ac77354ada1d692e688234be4ba3e180';

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
class GetCurrentUserProvider extends FutureProvider<UserInfo?> {
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
  FutureProviderElement<UserInfo?> createElement() {
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
mixin GetCurrentUserRef on FutureProviderRef<UserInfo?> {
  /// The parameter `uid` of this provider.
  String get uid;
}

class _GetCurrentUserProviderElement extends FutureProviderElement<UserInfo?>
    with GetCurrentUserRef {
  _GetCurrentUserProviderElement(super.provider);

  @override
  String get uid => (origin as GetCurrentUserProvider).uid;
}

String _$getMyQrCodeHash() => r'8dcdfbc5f4d900c50dd39ab376f38c2d0e8cea2e';

/// See also [getMyQrCode].
@ProviderFor(getMyQrCode)
final getMyQrCodeProvider = AutoDisposeFutureProvider<String>.internal(
  getMyQrCode,
  name: r'getMyQrCodeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getMyQrCodeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetMyQrCodeRef = AutoDisposeFutureProviderRef<String>;
String _$appCoreServiceHash() => r'3cfd015354a52de08ff359ba58e13ef66ceffc3f';

/// See also [AppCoreService].
@ProviderFor(AppCoreService)
final appCoreServiceProvider =
    NotifierProvider<AppCoreService, AppCoreState>.internal(
  AppCoreService.new,
  name: r'appCoreServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$appCoreServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AppCoreService = Notifier<AppCoreState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
