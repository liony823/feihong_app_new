// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_intro_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$setIntroControllerHash() =>
    r'415a3535141cfd6e938a0f5f99a1cb9a9ff1a193';

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

abstract class _$SetIntroController
    extends BuildlessAutoDisposeNotifier<SetIntroState> {
  late final String intro;

  SetIntroState build({
    required String intro,
  });
}

/// See also [SetIntroController].
@ProviderFor(SetIntroController)
const setIntroControllerProvider = SetIntroControllerFamily();

/// See also [SetIntroController].
class SetIntroControllerFamily extends Family<SetIntroState> {
  /// See also [SetIntroController].
  const SetIntroControllerFamily();

  /// See also [SetIntroController].
  SetIntroControllerProvider call({
    required String intro,
  }) {
    return SetIntroControllerProvider(
      intro: intro,
    );
  }

  @override
  SetIntroControllerProvider getProviderOverride(
    covariant SetIntroControllerProvider provider,
  ) {
    return call(
      intro: provider.intro,
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
  String? get name => r'setIntroControllerProvider';
}

/// See also [SetIntroController].
class SetIntroControllerProvider
    extends AutoDisposeNotifierProviderImpl<SetIntroController, SetIntroState> {
  /// See also [SetIntroController].
  SetIntroControllerProvider({
    required String intro,
  }) : this._internal(
          () => SetIntroController()..intro = intro,
          from: setIntroControllerProvider,
          name: r'setIntroControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$setIntroControllerHash,
          dependencies: SetIntroControllerFamily._dependencies,
          allTransitiveDependencies:
              SetIntroControllerFamily._allTransitiveDependencies,
          intro: intro,
        );

  SetIntroControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.intro,
  }) : super.internal();

  final String intro;

  @override
  SetIntroState runNotifierBuild(
    covariant SetIntroController notifier,
  ) {
    return notifier.build(
      intro: intro,
    );
  }

  @override
  Override overrideWith(SetIntroController Function() create) {
    return ProviderOverride(
      origin: this,
      override: SetIntroControllerProvider._internal(
        () => create()..intro = intro,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        intro: intro,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<SetIntroController, SetIntroState>
      createElement() {
    return _SetIntroControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SetIntroControllerProvider && other.intro == intro;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, intro.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SetIntroControllerRef on AutoDisposeNotifierProviderRef<SetIntroState> {
  /// The parameter `intro` of this provider.
  String get intro;
}

class _SetIntroControllerProviderElement
    extends AutoDisposeNotifierProviderElement<SetIntroController,
        SetIntroState> with SetIntroControllerRef {
  _SetIntroControllerProviderElement(super.provider);

  @override
  String get intro => (origin as SetIntroControllerProvider).intro;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
