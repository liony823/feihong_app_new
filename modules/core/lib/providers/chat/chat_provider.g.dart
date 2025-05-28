// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$chatProviderHash() => r'14a957fe812d6feba20c4da0ba7793f83e95d66a';

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

abstract class _$ChatProvider
    extends BuildlessAutoDisposeNotifier<ChatProviderState> {
  late final String channelID;
  late final int channelType;
  late final List<WKMessageContent> msgContentList;
  late final int lastPreviewMsgOrderSeq;
  late final int keepOffsetY;
  late final int redDot;
  late final int tipsOrderSeq;
  late final int unreadStartMsgOrderSeq;
  late final int aroundMsgSeq;

  ChatProviderState build({
    required String channelID,
    required int channelType,
    List<WKMessageContent> msgContentList = const [],
    int lastPreviewMsgOrderSeq = 0,
    int keepOffsetY = 0,
    int redDot = 0,
    int tipsOrderSeq = 0,
    int unreadStartMsgOrderSeq = 0,
    int aroundMsgSeq = 0,
  });
}

/// See also [ChatProvider].
@ProviderFor(ChatProvider)
const chatProviderProvider = ChatProviderFamily();

/// See also [ChatProvider].
class ChatProviderFamily extends Family<ChatProviderState> {
  /// See also [ChatProvider].
  const ChatProviderFamily();

  /// See also [ChatProvider].
  ChatProviderProvider call({
    required String channelID,
    required int channelType,
    List<WKMessageContent> msgContentList = const [],
    int lastPreviewMsgOrderSeq = 0,
    int keepOffsetY = 0,
    int redDot = 0,
    int tipsOrderSeq = 0,
    int unreadStartMsgOrderSeq = 0,
    int aroundMsgSeq = 0,
  }) {
    return ChatProviderProvider(
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
  ChatProviderProvider getProviderOverride(
    covariant ChatProviderProvider provider,
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
  String? get name => r'chatProviderProvider';
}

/// See also [ChatProvider].
class ChatProviderProvider
    extends AutoDisposeNotifierProviderImpl<ChatProvider, ChatProviderState> {
  /// See also [ChatProvider].
  ChatProviderProvider({
    required String channelID,
    required int channelType,
    List<WKMessageContent> msgContentList = const [],
    int lastPreviewMsgOrderSeq = 0,
    int keepOffsetY = 0,
    int redDot = 0,
    int tipsOrderSeq = 0,
    int unreadStartMsgOrderSeq = 0,
    int aroundMsgSeq = 0,
  }) : this._internal(
          () => ChatProvider()
            ..channelID = channelID
            ..channelType = channelType
            ..msgContentList = msgContentList
            ..lastPreviewMsgOrderSeq = lastPreviewMsgOrderSeq
            ..keepOffsetY = keepOffsetY
            ..redDot = redDot
            ..tipsOrderSeq = tipsOrderSeq
            ..unreadStartMsgOrderSeq = unreadStartMsgOrderSeq
            ..aroundMsgSeq = aroundMsgSeq,
          from: chatProviderProvider,
          name: r'chatProviderProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$chatProviderHash,
          dependencies: ChatProviderFamily._dependencies,
          allTransitiveDependencies:
              ChatProviderFamily._allTransitiveDependencies,
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

  ChatProviderProvider._internal(
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
  final List<WKMessageContent> msgContentList;
  final int lastPreviewMsgOrderSeq;
  final int keepOffsetY;
  final int redDot;
  final int tipsOrderSeq;
  final int unreadStartMsgOrderSeq;
  final int aroundMsgSeq;

  @override
  ChatProviderState runNotifierBuild(
    covariant ChatProvider notifier,
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
  Override overrideWith(ChatProvider Function() create) {
    return ProviderOverride(
      origin: this,
      override: ChatProviderProvider._internal(
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
  AutoDisposeNotifierProviderElement<ChatProvider, ChatProviderState>
      createElement() {
    return _ChatProviderProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChatProviderProvider &&
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
mixin ChatProviderRef on AutoDisposeNotifierProviderRef<ChatProviderState> {
  /// The parameter `channelID` of this provider.
  String get channelID;

  /// The parameter `channelType` of this provider.
  int get channelType;

  /// The parameter `msgContentList` of this provider.
  List<WKMessageContent> get msgContentList;

  /// The parameter `lastPreviewMsgOrderSeq` of this provider.
  int get lastPreviewMsgOrderSeq;

  /// The parameter `keepOffsetY` of this provider.
  int get keepOffsetY;

  /// The parameter `redDot` of this provider.
  int get redDot;

  /// The parameter `tipsOrderSeq` of this provider.
  int get tipsOrderSeq;

  /// The parameter `unreadStartMsgOrderSeq` of this provider.
  int get unreadStartMsgOrderSeq;

  /// The parameter `aroundMsgSeq` of this provider.
  int get aroundMsgSeq;
}

class _ChatProviderProviderElement
    extends AutoDisposeNotifierProviderElement<ChatProvider, ChatProviderState>
    with ChatProviderRef {
  _ChatProviderProviderElement(super.provider);

  @override
  String get channelID => (origin as ChatProviderProvider).channelID;
  @override
  int get channelType => (origin as ChatProviderProvider).channelType;
  @override
  List<WKMessageContent> get msgContentList =>
      (origin as ChatProviderProvider).msgContentList;
  @override
  int get lastPreviewMsgOrderSeq =>
      (origin as ChatProviderProvider).lastPreviewMsgOrderSeq;
  @override
  int get keepOffsetY => (origin as ChatProviderProvider).keepOffsetY;
  @override
  int get redDot => (origin as ChatProviderProvider).redDot;
  @override
  int get tipsOrderSeq => (origin as ChatProviderProvider).tipsOrderSeq;
  @override
  int get unreadStartMsgOrderSeq =>
      (origin as ChatProviderProvider).unreadStartMsgOrderSeq;
  @override
  int get aroundMsgSeq => (origin as ChatProviderProvider).aroundMsgSeq;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
