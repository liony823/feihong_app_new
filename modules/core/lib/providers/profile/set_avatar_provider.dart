import 'package:common/common.dart';
import 'package:core/core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'set_avatar_provider.g.dart';

class SetProfileState {
  final String avatar;

  SetProfileState({required this.avatar});

  SetProfileState copyWith({String? avatar}) {
    return SetProfileState(avatar: avatar ?? this.avatar);
  }
}

@riverpod
class SetProfileController extends _$SetProfileController {
  @override
  SetProfileState build({
    required String avatar,
  }) {
    return SetProfileState(avatar: avatar);
  }

  void openPhotoSheet() {
    ViewHelper.openPhotoSheet(
      fileType: FileType.avatar,
      aspectRatioX: 1,
      aspectRatioY: 1,
      onData: (path, url) {
        if (Utils.isEmptyOrNull(url)) return;
        ToastUtil.simpleToast(Global.context!.t.c.profile.setAvatarSuccess);
        state = state.copyWith(
            avatar: "$url?v=${DateTime.now().millisecondsSinceEpoch}");
      },
    );
  }
}
