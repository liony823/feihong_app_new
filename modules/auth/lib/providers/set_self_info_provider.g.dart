// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_self_info_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$setSelfInfoHash() => r'4239db7b9fcc7d8a5a2f1692dad3779af5af1eeb';

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

abstract class _$SetSelfInfo
    extends BuildlessAutoDisposeNotifier<SetSelfInfoState> {
  late final String uid;
  late final String registerType;

  SetSelfInfoState build({
    required String uid,
    required String registerType,
  });
}

/// See also [SetSelfInfo].
@ProviderFor(SetSelfInfo)
const setSelfInfoProvider = SetSelfInfoFamily();

/// See also [SetSelfInfo].
class SetSelfInfoFamily extends Family<SetSelfInfoState> {
  /// See also [SetSelfInfo].
  const SetSelfInfoFamily();

  /// See also [SetSelfInfo].
  SetSelfInfoProvider call({
    required String uid,
    required String registerType,
  }) {
    return SetSelfInfoProvider(
      uid: uid,
      registerType: registerType,
    );
  }

  @override
  SetSelfInfoProvider getProviderOverride(
    covariant SetSelfInfoProvider provider,
  ) {
    return call(
      uid: provider.uid,
      registerType: provider.registerType,
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
  String? get name => r'setSelfInfoProvider';
}

/// See also [SetSelfInfo].
class SetSelfInfoProvider
    extends AutoDisposeNotifierProviderImpl<SetSelfInfo, SetSelfInfoState> {
  /// See also [SetSelfInfo].
  SetSelfInfoProvider({
    required String uid,
    required String registerType,
  }) : this._internal(
          () => SetSelfInfo()
            ..uid = uid
            ..registerType = registerType,
          from: setSelfInfoProvider,
          name: r'setSelfInfoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$setSelfInfoHash,
          dependencies: SetSelfInfoFamily._dependencies,
          allTransitiveDependencies:
              SetSelfInfoFamily._allTransitiveDependencies,
          uid: uid,
          registerType: registerType,
        );

  SetSelfInfoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.uid,
    required this.registerType,
  }) : super.internal();

  final String uid;
  final String registerType;

  @override
  SetSelfInfoState runNotifierBuild(
    covariant SetSelfInfo notifier,
  ) {
    return notifier.build(
      uid: uid,
      registerType: registerType,
    );
  }

  @override
  Override overrideWith(SetSelfInfo Function() create) {
    return ProviderOverride(
      origin: this,
      override: SetSelfInfoProvider._internal(
        () => create()
          ..uid = uid
          ..registerType = registerType,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        uid: uid,
        registerType: registerType,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<SetSelfInfo, SetSelfInfoState>
      createElement() {
    return _SetSelfInfoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SetSelfInfoProvider &&
        other.uid == uid &&
        other.registerType == registerType;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, uid.hashCode);
    hash = _SystemHash.combine(hash, registerType.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SetSelfInfoRef on AutoDisposeNotifierProviderRef<SetSelfInfoState> {
  /// The parameter `uid` of this provider.
  String get uid;

  /// The parameter `registerType` of this provider.
  String get registerType;
}

class _SetSelfInfoProviderElement
    extends AutoDisposeNotifierProviderElement<SetSelfInfo, SetSelfInfoState>
    with SetSelfInfoRef {
  _SetSelfInfoProviderElement(super.provider);

  @override
  String get uid => (origin as SetSelfInfoProvider).uid;
  @override
  String get registerType => (origin as SetSelfInfoProvider).registerType;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
