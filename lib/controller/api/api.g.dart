// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getCurrentUserHash() => r'2788bd601299197708f4b098f14c5f8a03b6a372';

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
class GetCurrentUserFamily extends Family<AsyncValue<UserInfo>> {
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
class GetCurrentUserProvider extends AutoDisposeFutureProvider<UserInfo> {
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
    FutureOr<UserInfo> Function(GetCurrentUserRef provider) create,
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
  AutoDisposeFutureProviderElement<UserInfo> createElement() {
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
mixin GetCurrentUserRef on AutoDisposeFutureProviderRef<UserInfo> {
  /// The parameter `uid` of this provider.
  String get uid;
}

class _GetCurrentUserProviderElement
    extends AutoDisposeFutureProviderElement<UserInfo> with GetCurrentUserRef {
  _GetCurrentUserProviderElement(super.provider);

  @override
  String get uid => (origin as GetCurrentUserProvider).uid;
}

String _$getAvatarUrlHash() => r'9ab3efdf77d75ca2737e44c4a1a6f927668884c8';

/// See also [getAvatarUrl].
@ProviderFor(getAvatarUrl)
const getAvatarUrlProvider = GetAvatarUrlFamily();

/// See also [getAvatarUrl].
class GetAvatarUrlFamily extends Family<AsyncValue<String>> {
  /// See also [getAvatarUrl].
  const GetAvatarUrlFamily();

  /// See also [getAvatarUrl].
  GetAvatarUrlProvider call(
    String uid,
  ) {
    return GetAvatarUrlProvider(
      uid,
    );
  }

  @override
  GetAvatarUrlProvider getProviderOverride(
    covariant GetAvatarUrlProvider provider,
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
  String? get name => r'getAvatarUrlProvider';
}

/// See also [getAvatarUrl].
class GetAvatarUrlProvider extends AutoDisposeFutureProvider<String> {
  /// See also [getAvatarUrl].
  GetAvatarUrlProvider(
    String uid,
  ) : this._internal(
          (ref) => getAvatarUrl(
            ref as GetAvatarUrlRef,
            uid,
          ),
          from: getAvatarUrlProvider,
          name: r'getAvatarUrlProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getAvatarUrlHash,
          dependencies: GetAvatarUrlFamily._dependencies,
          allTransitiveDependencies:
              GetAvatarUrlFamily._allTransitiveDependencies,
          uid: uid,
        );

  GetAvatarUrlProvider._internal(
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
    FutureOr<String> Function(GetAvatarUrlRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetAvatarUrlProvider._internal(
        (ref) => create(ref as GetAvatarUrlRef),
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
  AutoDisposeFutureProviderElement<String> createElement() {
    return _GetAvatarUrlProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetAvatarUrlProvider && other.uid == uid;
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
mixin GetAvatarUrlRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `uid` of this provider.
  String get uid;
}

class _GetAvatarUrlProviderElement
    extends AutoDisposeFutureProviderElement<String> with GetAvatarUrlRef {
  _GetAvatarUrlProviderElement(super.provider);

  @override
  String get uid => (origin as GetAvatarUrlProvider).uid;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
