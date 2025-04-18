// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_phone_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$verifyPhoneControllerHash() =>
    r'39fde6c885a0918ad9aada66b8dd7878b9bcdd83';

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

abstract class _$VerifyPhoneController
    extends BuildlessAutoDisposeNotifier<VerifyPhoneState> {
  late final String phone;
  late final String zone;
  late final String password;
  late final int usedFor;
  late final String? inviteCode;

  VerifyPhoneState build({
    required String phone,
    required String zone,
    required String password,
    required int usedFor,
    String? inviteCode,
  });
}

/// See also [VerifyPhoneController].
@ProviderFor(VerifyPhoneController)
const verifyPhoneControllerProvider = VerifyPhoneControllerFamily();

/// See also [VerifyPhoneController].
class VerifyPhoneControllerFamily extends Family<VerifyPhoneState> {
  /// See also [VerifyPhoneController].
  const VerifyPhoneControllerFamily();

  /// See also [VerifyPhoneController].
  VerifyPhoneControllerProvider call({
    required String phone,
    required String zone,
    required String password,
    required int usedFor,
    String? inviteCode,
  }) {
    return VerifyPhoneControllerProvider(
      phone: phone,
      zone: zone,
      password: password,
      usedFor: usedFor,
      inviteCode: inviteCode,
    );
  }

  @override
  VerifyPhoneControllerProvider getProviderOverride(
    covariant VerifyPhoneControllerProvider provider,
  ) {
    return call(
      phone: provider.phone,
      zone: provider.zone,
      password: provider.password,
      usedFor: provider.usedFor,
      inviteCode: provider.inviteCode,
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
  String? get name => r'verifyPhoneControllerProvider';
}

/// See also [VerifyPhoneController].
class VerifyPhoneControllerProvider extends AutoDisposeNotifierProviderImpl<
    VerifyPhoneController, VerifyPhoneState> {
  /// See also [VerifyPhoneController].
  VerifyPhoneControllerProvider({
    required String phone,
    required String zone,
    required String password,
    required int usedFor,
    String? inviteCode,
  }) : this._internal(
          () => VerifyPhoneController()
            ..phone = phone
            ..zone = zone
            ..password = password
            ..usedFor = usedFor
            ..inviteCode = inviteCode,
          from: verifyPhoneControllerProvider,
          name: r'verifyPhoneControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$verifyPhoneControllerHash,
          dependencies: VerifyPhoneControllerFamily._dependencies,
          allTransitiveDependencies:
              VerifyPhoneControllerFamily._allTransitiveDependencies,
          phone: phone,
          zone: zone,
          password: password,
          usedFor: usedFor,
          inviteCode: inviteCode,
        );

  VerifyPhoneControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.phone,
    required this.zone,
    required this.password,
    required this.usedFor,
    required this.inviteCode,
  }) : super.internal();

  final String phone;
  final String zone;
  final String password;
  final int usedFor;
  final String? inviteCode;

  @override
  VerifyPhoneState runNotifierBuild(
    covariant VerifyPhoneController notifier,
  ) {
    return notifier.build(
      phone: phone,
      zone: zone,
      password: password,
      usedFor: usedFor,
      inviteCode: inviteCode,
    );
  }

  @override
  Override overrideWith(VerifyPhoneController Function() create) {
    return ProviderOverride(
      origin: this,
      override: VerifyPhoneControllerProvider._internal(
        () => create()
          ..phone = phone
          ..zone = zone
          ..password = password
          ..usedFor = usedFor
          ..inviteCode = inviteCode,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        phone: phone,
        zone: zone,
        password: password,
        usedFor: usedFor,
        inviteCode: inviteCode,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<VerifyPhoneController, VerifyPhoneState>
      createElement() {
    return _VerifyPhoneControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is VerifyPhoneControllerProvider &&
        other.phone == phone &&
        other.zone == zone &&
        other.password == password &&
        other.usedFor == usedFor &&
        other.inviteCode == inviteCode;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, phone.hashCode);
    hash = _SystemHash.combine(hash, zone.hashCode);
    hash = _SystemHash.combine(hash, password.hashCode);
    hash = _SystemHash.combine(hash, usedFor.hashCode);
    hash = _SystemHash.combine(hash, inviteCode.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin VerifyPhoneControllerRef
    on AutoDisposeNotifierProviderRef<VerifyPhoneState> {
  /// The parameter `phone` of this provider.
  String get phone;

  /// The parameter `zone` of this provider.
  String get zone;

  /// The parameter `password` of this provider.
  String get password;

  /// The parameter `usedFor` of this provider.
  int get usedFor;

  /// The parameter `inviteCode` of this provider.
  String? get inviteCode;
}

class _VerifyPhoneControllerProviderElement
    extends AutoDisposeNotifierProviderElement<VerifyPhoneController,
        VerifyPhoneState> with VerifyPhoneControllerRef {
  _VerifyPhoneControllerProviderElement(super.provider);

  @override
  String get phone => (origin as VerifyPhoneControllerProvider).phone;
  @override
  String get zone => (origin as VerifyPhoneControllerProvider).zone;
  @override
  String get password => (origin as VerifyPhoneControllerProvider).password;
  @override
  int get usedFor => (origin as VerifyPhoneControllerProvider).usedFor;
  @override
  String? get inviteCode =>
      (origin as VerifyPhoneControllerProvider).inviteCode;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
