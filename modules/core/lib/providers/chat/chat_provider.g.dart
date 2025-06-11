// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$chatControllerHash() => r'25e23960be02e32606d56d869073d031ffe1c024';

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

abstract class _$ChatController
    extends BuildlessAutoDisposeNotifier<ChatProviderState> {
  late final String channelID;
  late final int channelType;
  late final List<WKMessageContent>? msgContentList;
  late final int? lastPreviewMsgOrderSeq;
  late final int? keepOffsetY;
  late final int? redDot;
  late final int? tipsOrderSeq;
  late final int? unreadStartMsgOrderSeq;
  late final int? aroundMsgSeq;

  ChatProviderState build({
    required String channelID,
    required int channelType,
    List<WKMessageContent>? msgContentList,
    int? lastPreviewMsgOrderSeq,
    int? keepOffsetY,
    int? redDot,
    int? tipsOrderSeq,
    int? unreadStartMsgOrderSeq,
    int? aroundMsgSeq,
  });
}

/// See also [ChatController].
@ProviderFor(ChatController)
const chatControllerProvider = ChatControllerFamily();

/// See also [ChatController].
class ChatControllerFamily extends Family<ChatProviderState> {
  /// See also [ChatController].
  const ChatControllerFamily();

  /// See also [ChatController].
  ChatControllerProvider call({
    required String channelID,
    required int channelType,
    List<WKMessageContent>? msgContentList,
    int? lastPreviewMsgOrderSeq,
    int? keepOffsetY,
    int? redDot,
    int? tipsOrderSeq,
    int? unreadStartMsgOrderSeq,
    int? aroundMsgSeq,
  }) {
    return ChatControllerProvider(
      channelID: channelID,
      channelType: channelType,
      msgContentList: msgContentList,
      lastPreviewMsgOrderSeq: lastPreviewMsgOrderSeq,
      keepOffsetY: keepOffsetY,
      redDot: redDot,
      tipsOrderSeq: tipsOrderSeq,
      unreadStartMsgOrderSeq: unreadStartMsgOrderSeq,
      aroundMsgSeq: aroundMsgSeq,
    );
  }

  @override
  ChatControllerProvider getProviderOverride(
    covariant ChatControllerProvider provider,
  ) {
    return call(
      channelID: provider.channelID,
      channelType: provider.channelType,
      msgContentList: provider.msgContentList,
      lastPreviewMsgOrderSeq: provider.lastPreviewMsgOrderSeq,
      keepOffsetY: provider.keepOffsetY,
      redDot: provider.redDot,
      tipsOrderSeq: provider.tipsOrderSeq,
      unreadStartMsgOrderSeq: provider.unreadStartMsgOrderSeq,
      aroundMsgSeq: provider.aroundMsgSeq,
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
  String? get name => r'chatControllerProvider';
}

/// See also [ChatController].
class ChatControllerProvider
    extends AutoDisposeNotifierProviderImpl<ChatController, ChatProviderState> {
  /// See also [ChatController].
  ChatControllerProvider({
    required String channelID,
    required int channelType,
    List<WKMessageContent>? msgContentList,
    int? lastPreviewMsgOrderSeq,
    int? keepOffsetY,
    int? redDot,
    int? tipsOrderSeq,
    int? unreadStartMsgOrderSeq,
    int? aroundMsgSeq,
  }) : this._internal(
          () => ChatController()
            ..channelID = channelID
            ..channelType = channelType
            ..msgContentList = msgContentList
            ..lastPreviewMsgOrderSeq = lastPreviewMsgOrderSeq
            ..keepOffsetY = keepOffsetY
            ..redDot = redDot
            ..tipsOrderSeq = tipsOrderSeq
            ..unreadStartMsgOrderSeq = unreadStartMsgOrderSeq
            ..aroundMsgSeq = aroundMsgSeq,
          from: chatControllerProvider,
          name: r'chatControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$chatControllerHash,
          dependencies: ChatControllerFamily._dependencies,
          allTransitiveDependencies:
              ChatControllerFamily._allTransitiveDependencies,
          channelID: channelID,
          channelType: channelType,
          msgContentList: msgContentList,
          lastPreviewMsgOrderSeq: lastPreviewMsgOrderSeq,
          keepOffsetY: keepOffsetY,
          redDot: redDot,
          tipsOrderSeq: tipsOrderSeq,
          unreadStartMsgOrderSeq: unreadStartMsgOrderSeq,
          aroundMsgSeq: aroundMsgSeq,
        );

  ChatControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.channelID,
    required this.channelType,
    required this.msgContentList,
    required this.lastPreviewMsgOrderSeq,
    required this.keepOffsetY,
    required this.redDot,
    required this.tipsOrderSeq,
    required this.unreadStartMsgOrderSeq,
    required this.aroundMsgSeq,
  }) : super.internal();

  final String channelID;
  final int channelType;
  final List<WKMessageContent>? msgContentList;
  final int? lastPreviewMsgOrderSeq;
  final int? keepOffsetY;
  final int? redDot;
  final int? tipsOrderSeq;
  final int? unreadStartMsgOrderSeq;
  final int? aroundMsgSeq;

  @override
  ChatProviderState runNotifierBuild(
    covariant ChatController notifier,
  ) {
    return notifier.build(
      channelID: channelID,
      channelType: channelType,
      msgContentList: msgContentList,
      lastPreviewMsgOrderSeq: lastPreviewMsgOrderSeq,
      keepOffsetY: keepOffsetY,
      redDot: redDot,
      tipsOrderSeq: tipsOrderSeq,
      unreadStartMsgOrderSeq: unreadStartMsgOrderSeq,
      aroundMsgSeq: aroundMsgSeq,
    );
  }

  @override
  Override overrideWith(ChatController Function() create) {
    return ProviderOverride(
      origin: this,
      override: ChatControllerProvider._internal(
        () => create()
          ..channelID = channelID
          ..channelType = channelType
          ..msgContentList = msgContentList
          ..lastPreviewMsgOrderSeq = lastPreviewMsgOrderSeq
          ..keepOffsetY = keepOffsetY
          ..redDot = redDot
          ..tipsOrderSeq = tipsOrderSeq
          ..unreadStartMsgOrderSeq = unreadStartMsgOrderSeq
          ..aroundMsgSeq = aroundMsgSeq,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        channelID: channelID,
        channelType: channelType,
        msgContentList: msgContentList,
        lastPreviewMsgOrderSeq: lastPreviewMsgOrderSeq,
        keepOffsetY: keepOffsetY,
        redDot: redDot,
        tipsOrderSeq: tipsOrderSeq,
        unreadStartMsgOrderSeq: unreadStartMsgOrderSeq,
        aroundMsgSeq: aroundMsgSeq,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<ChatController, ChatProviderState>
      createElement() {
    return _ChatControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChatControllerProvider &&
        other.channelID == channelID &&
        other.channelType == channelType &&
        other.msgContentList == msgContentList &&
        other.lastPreviewMsgOrderSeq == lastPreviewMsgOrderSeq &&
        other.keepOffsetY == keepOffsetY &&
        other.redDot == redDot &&
        other.tipsOrderSeq == tipsOrderSeq &&
        other.unreadStartMsgOrderSeq == unreadStartMsgOrderSeq &&
        other.aroundMsgSeq == aroundMsgSeq;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, channelID.hashCode);
    hash = _SystemHash.combine(hash, channelType.hashCode);
    hash = _SystemHash.combine(hash, msgContentList.hashCode);
    hash = _SystemHash.combine(hash, lastPreviewMsgOrderSeq.hashCode);
    hash = _SystemHash.combine(hash, keepOffsetY.hashCode);
    hash = _SystemHash.combine(hash, redDot.hashCode);
    hash = _SystemHash.combine(hash, tipsOrderSeq.hashCode);
    hash = _SystemHash.combine(hash, unreadStartMsgOrderSeq.hashCode);
    hash = _SystemHash.combine(hash, aroundMsgSeq.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ChatControllerRef on AutoDisposeNotifierProviderRef<ChatProviderState> {
  /// The parameter `channelID` of this provider.
  String get channelID;

  /// The parameter `channelType` of this provider.
  int get channelType;

  /// The parameter `msgContentList` of this provider.
  List<WKMessageContent>? get msgContentList;

  /// The parameter `lastPreviewMsgOrderSeq` of this provider.
  int? get lastPreviewMsgOrderSeq;

  /// The parameter `keepOffsetY` of this provider.
  int? get keepOffsetY;

  /// The parameter `redDot` of this provider.
  int? get redDot;

  /// The parameter `tipsOrderSeq` of this provider.
  int? get tipsOrderSeq;

  /// The parameter `unreadStartMsgOrderSeq` of this provider.
  int? get unreadStartMsgOrderSeq;

  /// The parameter `aroundMsgSeq` of this provider.
  int? get aroundMsgSeq;
}

class _ChatControllerProviderElement extends AutoDisposeNotifierProviderElement<
    ChatController, ChatProviderState> with ChatControllerRef {
  _ChatControllerProviderElement(super.provider);

  @override
  String get channelID => (origin as ChatControllerProvider).channelID;
  @override
  int get channelType => (origin as ChatControllerProvider).channelType;
  @override
  List<WKMessageContent>? get msgContentList =>
      (origin as ChatControllerProvider).msgContentList;
  @override
  int? get lastPreviewMsgOrderSeq =>
      (origin as ChatControllerProvider).lastPreviewMsgOrderSeq;
  @override
  int? get keepOffsetY => (origin as ChatControllerProvider).keepOffsetY;
  @override
  int? get redDot => (origin as ChatControllerProvider).redDot;
  @override
  int? get tipsOrderSeq => (origin as ChatControllerProvider).tipsOrderSeq;
  @override
  int? get unreadStartMsgOrderSeq =>
      (origin as ChatControllerProvider).unreadStartMsgOrderSeq;
  @override
  int? get aroundMsgSeq => (origin as ChatControllerProvider).aroundMsgSeq;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
