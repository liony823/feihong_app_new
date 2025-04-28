// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_avatar_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$setProfileControllerHash() =>
    r'4b10a8798306414b8cdf6ef6310ce3ac99a42418';

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

abstract class _$SetProfileController
    extends BuildlessAutoDisposeNotifier<SetProfileState> {
  late final String avatar;

  SetProfileState build({
    required String avatar,
  });
}

/// See also [SetProfileController].
@ProviderFor(SetProfileController)
const setProfileControllerProvider = SetProfileControllerFamily();

/// See also [SetProfileController].
class SetProfileControllerFamily extends Family<SetProfileState> {
  /// See also [SetProfileController].
  const SetProfileControllerFamily();

  /// See also [SetProfileController].
  SetProfileControllerProvider call({
    required String avatar,
  }) {
    return SetProfileControllerProvider(
      avatar: avatar,
    );
  }

  @override
  SetProfileControllerProvider getProviderOverride(
    covariant SetProfileControllerProvider provider,
  ) {
    return call(
      avatar: provider.avatar,
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
  String? get name => r'setProfileControllerProvider';
}

/// See also [SetProfileController].
class SetProfileControllerProvider extends AutoDisposeNotifierProviderImpl<
    SetProfileController, SetProfileState> {
  /// See also [SetProfileController].
  SetProfileControllerProvider({
    required String avatar,
  }) : this._internal(
          () => SetProfileController()..avatar = avatar,
          from: setProfileControllerProvider,
          name: r'setProfileControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$setProfileControllerHash,
          dependencies: SetProfileControllerFamily._dependencies,
          allTransitiveDependencies:
              SetProfileControllerFamily._allTransitiveDependencies,
          avatar: avatar,
        );

  SetProfileControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.avatar,
  }) : super.internal();

  final String avatar;

  @override
  SetProfileState runNotifierBuild(
    covariant SetProfileController notifier,
  ) {
    return notifier.build(
      avatar: avatar,
    );
  }

  @override
  Override overrideWith(SetProfileController Function() create) {
    return ProviderOverride(
      origin: this,
      override: SetProfileControllerProvider._internal(
        () => create()..avatar = avatar,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        avatar: avatar,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<SetProfileController, SetProfileState>
      createElement() {
    return _SetProfileControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SetProfileControllerProvider && other.avatar == avatar;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, avatar.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SetProfileControllerRef
    on AutoDisposeNotifierProviderRef<SetProfileState> {
  /// The parameter `avatar` of this provider.
  String get avatar;
}

class _SetProfileControllerProviderElement
    extends AutoDisposeNotifierProviderElement<SetProfileController,
        SetProfileState> with SetProfileControllerRef {
  _SetProfileControllerProviderElement(super.provider);

  @override
  String get avatar => (origin as SetProfileControllerProvider).avatar;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
