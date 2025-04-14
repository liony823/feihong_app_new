import 'package:common/common.dart';
import 'package:wukongimfluttersdk/common/options.dart';
import 'package:wukongimfluttersdk/model/wk_image_content.dart';
import 'package:wukongimfluttersdk/model/wk_video_content.dart';
import 'package:wukongimfluttersdk/model/wk_voice_content.dart';
import 'package:wukongimfluttersdk/type/const.dart';
import 'package:wukongimfluttersdk/wkim.dart';

class IMUtils {
  static Future<bool> initIM(String uid, String token) async {
    bool result = await WKIM.shared.setup(Options.newDefault(uid, token));
    WKIM.shared.options.getAddr = (Function(String address) complete) async {
      String ip = await Apis.getIP(uid);
      complete(ip);
    };
    if (result) {
      WKIM.shared.connectionManager.connect();
      initListener();
    }
    return result;
  }

  static initListener() {
    WKIM.shared.cmdManager.addOnCmdListener('sys_im', (wkcmd) async {
      if (wkcmd.cmd == 'messageRevoke') {
        var channelID = wkcmd.param['channel_id'];
        var channelType = wkcmd.param['channel_type'];
        if (channelID != '') {
          // 同步消息扩展
          var maxVersion = await WKIM.shared.messageManager
              .getMaxExtraVersionWithChannel(channelID, channelType);
          Apis.syncMsgExtra(channelID, channelType, maxVersion);
        }
      } else if (wkcmd.cmd == 'channelUpdate') {
        var channelID = wkcmd.param['channel_id'];
        var channelType = wkcmd.param['channel_type'];
        if (channelID != '') {
          if (channelType == WKChannelType.personal) {
            // 同步个人信息
            Apis.getUserInfo(channelID);
          } else if (channelType == WKChannelType.group) {
            // 同步群信息
            Apis.getGroupInfo(channelID);
          }
        }
      } else if (wkcmd.cmd == 'unreadClear') {
        var channelID = wkcmd.param['channel_id'];
        var channelType = wkcmd.param['channel_type'];
        var unread = wkcmd.param['unread'];
        if (channelID != '') {
          WKIM.shared.conversationManager.updateRedDot(
            channelID,
            channelType,
            unread,
          );
        }
      }
    });

    // 监听同步某个频道的消息
    WKIM.shared.messageManager.addOnSyncChannelMsgListener((
      channelID,
      channelType,
      startMessageSeq,
      endMessageSeq,
      limit,
      pullMode,
      back,
    ) {
      Apis.syncChannelMsg(
        channelID,
        channelType,
        startMessageSeq,
        endMessageSeq,
        limit,
        pullMode,
        (p0) => back(p0),
      );
    });

    // 监听获取channel资料（群/个人信息）
    WKIM.shared.channelManager.addOnGetChannelListener((
      channelId,
      channelType,
      back,
    ) {
      if (channelType == WKChannelType.personal) {
        // 获取个人资料
        Logger.print('获取个人资料$channelId');
        Apis.getUserInfo(channelId);
      } else if (channelType == WKChannelType.group) {
        // 获取群资料
        Apis.getGroupInfo(channelId);
      }
    });

    // 监听同步最近会话
    WKIM.shared.conversationManager.addOnSyncConversationListener((
      lastSsgSeqs,
      msgCount,
      version,
      back,
    ) {
      Apis.syncConversation(lastSsgSeqs, msgCount, version, back);
    });
    // 监听上传消息附件
    WKIM.shared.messageManager.addOnUploadAttachmentListener((wkMsg, back) {
      if (wkMsg.contentType == WkMessageContentType.image) {
        // todo 上传附件
        WKImageContent imageContent = wkMsg.messageContent! as WKImageContent;
        imageContent.url = 'xxxxxx';
        wkMsg.messageContent = imageContent;
        back(true, wkMsg);
      }
      if (wkMsg.contentType == WkMessageContentType.voice) {
        // todo 上传语音
        WKVoiceContent voiceContent = wkMsg.messageContent! as WKVoiceContent;
        voiceContent.url = 'xxxxxx';
        wkMsg.messageContent = voiceContent;
        back(true, wkMsg);
      } else if (wkMsg.contentType == WkMessageContentType.video) {
        WKVideoContent videoContent = wkMsg.messageContent! as WKVideoContent;
        // todo 上传封面及视频
        videoContent.cover = 'xxxxxx';
        videoContent.url = 'ssssss';
        wkMsg.messageContent = videoContent;
        back(true, wkMsg);
      }
    });
  }
}
