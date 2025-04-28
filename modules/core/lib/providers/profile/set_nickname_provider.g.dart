// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_nickname_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$setNicknameControllerHash() =>
    r'9a375933d9836f386584d5a52aad39133ae3b10a';

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

abstract class _$SetNicknameController
    extends BuildlessAutoDisposeNotifier<SetNicknameState> {
  late final String nickname;

  SetNicknameState build({
    required String nickname,
  });
}

/// See also [SetNicknameController].
@ProviderFor(SetNicknameController)
const setNicknameControllerProvider = SetNicknameControllerFamily();

/// See also [SetNicknameController].
class SetNicknameControllerFamily extends Family<SetNicknameState> {
  /// See also [SetNicknameController].
  const SetNicknameControllerFamily();

  /// See also [SetNicknameController].
  SetNicknameControllerProvider call({
    required String nickname,
  }) {
    return SetNicknameControllerProvider(
      nickname: nickname,
    );
  }

  @override
  SetNicknameControllerProvider getProviderOverride(
    covariant SetNicknameControllerProvider provider,
  ) {
    return call(
      nickname: provider.nickname,
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
  String? get name => r'setNicknameControllerProvider';
}

/// See also [SetNicknameController].
class SetNicknameControllerProvider extends AutoDisposeNotifierProviderImpl<
    SetNicknameController, SetNicknameState> {
  /// See also [SetNicknameController].
  SetNicknameControllerProvider({
    required String nickname,
  }) : this._internal(
          () => SetNicknameController()..nickname = nickname,
          from: setNicknameControllerProvider,
          name: r'setNicknameControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$setNicknameControllerHash,
          dependencies: SetNicknameControllerFamily._dependencies,
          allTransitiveDependencies:
              SetNicknameControllerFamily._allTransitiveDependencies,
          nickname: nickname,
        );

  SetNicknameControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.nickname,
  }) : super.internal();

  final String nickname;

  @override
  SetNicknameState runNotifierBuild(
    covariant SetNicknameController notifier,
  ) {
    return notifier.build(
      nickname: nickname,
    );
  }

  @override
  Override overrideWith(SetNicknameController Function() create) {
    return ProviderOverride(
      origin: this,
      override: SetNicknameControllerProvider._internal(
        () => create()..nickname = nickname,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        nickname: nickname,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<SetNicknameController, SetNicknameState>
      createElement() {
    return _SetNicknameControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SetNicknameControllerProvider && other.nickname == nickname;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, nickname.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SetNicknameControllerRef
    on AutoDisposeNotifierProviderRef<SetNicknameState> {
  /// The parameter `nickname` of this provider.
  String get nickname;
}

class _SetNicknameControllerProviderElement
    extends AutoDisposeNotifierProviderElement<SetNicknameController,
        SetNicknameState> with SetNicknameControllerRef {
  _SetNicknameControllerProviderElement(super.provider);

  @override
  String get nickname => (origin as SetNicknameControllerProvider).nickname;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
