// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'im_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$iMServiceHash() => r'e3b9c452b708d266942f2241d2a59a96f8e2f72d';

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

abstract class _$IMService extends BuildlessAutoDisposeNotifier<IMState> {
  late final String uid;
  late final String token;

  IMState build({
    required String uid,
    required String token,
  });
}

/// IM服务类，处理与IM SDK的交互
///
/// Copied from [IMService].
@ProviderFor(IMService)
const iMServiceProvider = IMServiceFamily();

/// IM服务类，处理与IM SDK的交互
///
/// Copied from [IMService].
class IMServiceFamily extends Family<IMState> {
  /// IM服务类，处理与IM SDK的交互
  ///
  /// Copied from [IMService].
  const IMServiceFamily();

  /// IM服务类，处理与IM SDK的交互
  ///
  /// Copied from [IMService].
  IMServiceProvider call({
    required String uid,
    required String token,
  }) {
    return IMServiceProvider(
      uid: uid,
      token: token,
    );
  }

  @override
  IMServiceProvider getProviderOverride(
    covariant IMServiceProvider provider,
  ) {
    return call(
      uid: provider.uid,
      token: provider.token,
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
  String? get name => r'iMServiceProvider';
}

/// IM服务类，处理与IM SDK的交互
///
/// Copied from [IMService].
class IMServiceProvider
    extends AutoDisposeNotifierProviderImpl<IMService, IMState> {
  /// IM服务类，处理与IM SDK的交互
  ///
  /// Copied from [IMService].
  IMServiceProvider({
    required String uid,
    required String token,
  }) : this._internal(
          () => IMService()
            ..uid = uid
            ..token = token,
          from: iMServiceProvider,
          name: r'iMServiceProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$iMServiceHash,
          dependencies: IMServiceFamily._dependencies,
          allTransitiveDependencies: IMServiceFamily._allTransitiveDependencies,
          uid: uid,
          token: token,
        );

  IMServiceProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.uid,
    required this.token,
  }) : super.internal();

  final String uid;
  final String token;

  @override
  IMState runNotifierBuild(
    covariant IMService notifier,
  ) {
    return notifier.build(
      uid: uid,
      token: token,
    );
  }

  @override
  Override overrideWith(IMService Function() create) {
    return ProviderOverride(
      origin: this,
      override: IMServiceProvider._internal(
        () => create()
          ..uid = uid
          ..token = token,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        uid: uid,
        token: token,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<IMService, IMState> createElement() {
    return _IMServiceProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is IMServiceProvider &&
        other.uid == uid &&
        other.token == token;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, uid.hashCode);
    hash = _SystemHash.combine(hash, token.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin IMServiceRef on AutoDisposeNotifierProviderRef<IMState> {
  /// The parameter `uid` of this provider.
  String get uid;

  /// The parameter `token` of this provider.
  String get token;
}

class _IMServiceProviderElement
    extends AutoDisposeNotifierProviderElement<IMService, IMState>
    with IMServiceRef {
  _IMServiceProviderElement(super.provider);

  @override
  String get uid => (origin as IMServiceProvider).uid;
  @override
  String get token => (origin as IMServiceProvider).token;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
