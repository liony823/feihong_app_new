// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_friend_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$addFriendProviderHash() => r'002224402650c0454ab7839f7c7b048a27ea9900';

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

abstract class _$AddFriendProvider
    extends BuildlessAutoDisposeNotifier<AddFriendState> {
  late final SearchUserInfo userInfo;

  AddFriendState build({
    required SearchUserInfo userInfo,
  });
}

/// See also [AddFriendProvider].
@ProviderFor(AddFriendProvider)
const addFriendProviderProvider = AddFriendProviderFamily();

/// See also [AddFriendProvider].
class AddFriendProviderFamily extends Family<AddFriendState> {
  /// See also [AddFriendProvider].
  const AddFriendProviderFamily();

  /// See also [AddFriendProvider].
  AddFriendProviderProvider call({
    required SearchUserInfo userInfo,
  }) {
    return AddFriendProviderProvider(
      userInfo: userInfo,
    );
  }

  @override
  AddFriendProviderProvider getProviderOverride(
    covariant AddFriendProviderProvider provider,
  ) {
    return call(
      userInfo: provider.userInfo,
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
  String? get name => r'addFriendProviderProvider';
}

/// See also [AddFriendProvider].
class AddFriendProviderProvider
    extends AutoDisposeNotifierProviderImpl<AddFriendProvider, AddFriendState> {
  /// See also [AddFriendProvider].
  AddFriendProviderProvider({
    required SearchUserInfo userInfo,
  }) : this._internal(
          () => AddFriendProvider()..userInfo = userInfo,
          from: addFriendProviderProvider,
          name: r'addFriendProviderProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$addFriendProviderHash,
          dependencies: AddFriendProviderFamily._dependencies,
          allTransitiveDependencies:
              AddFriendProviderFamily._allTransitiveDependencies,
          userInfo: userInfo,
        );

  AddFriendProviderProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userInfo,
  }) : super.internal();

  final SearchUserInfo userInfo;

  @override
  AddFriendState runNotifierBuild(
    covariant AddFriendProvider notifier,
  ) {
    return notifier.build(
      userInfo: userInfo,
    );
  }

  @override
  Override overrideWith(AddFriendProvider Function() create) {
    return ProviderOverride(
      origin: this,
      override: AddFriendProviderProvider._internal(
        () => create()..userInfo = userInfo,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userInfo: userInfo,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<AddFriendProvider, AddFriendState>
      createElement() {
    return _AddFriendProviderProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AddFriendProviderProvider && other.userInfo == userInfo;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userInfo.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AddFriendProviderRef on AutoDisposeNotifierProviderRef<AddFriendState> {
  /// The parameter `userInfo` of this provider.
  SearchUserInfo get userInfo;
}

class _AddFriendProviderProviderElement
    extends AutoDisposeNotifierProviderElement<AddFriendProvider,
        AddFriendState> with AddFriendProviderRef {
  _AddFriendProviderProviderElement(super.provider);

  @override
  SearchUserInfo get userInfo => (origin as AddFriendProviderProvider).userInfo;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
