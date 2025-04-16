import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';
import 'package:wechat_camera_picker/wechat_camera_picker.dart';

class ViewUtils {
  static void openPhotoSheet({
    Function(dynamic path, dynamic url)? onData,
    bool crop = true,
    bool toUrl = true,
    bool fromGallery = true,
    bool fromCamera = true,
    List<SheetItem> items = const [],
    int quality = 80,
    FileType fileType = FileType.common,
  }) {
    bool allowSendImageTypeHelper(String? mimeType) {
      final result =
          mimeType?.contains('png') == true ||
          mimeType?.contains('jpeg') == true;

      return result;
    }

    Future<bool> allowSendImageType(AssetEntity entity) async {
      final mimeType = await entity.mimeTypeAsync;

      return allowSendImageTypeHelper(mimeType);
    }

    final context = Global.context!;
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder:
          (context) => BottomSheetView(
            items: [
              ...items,
              if (fromGallery)
                SheetItem(
                  label: context.t.c.toolboxAlbum,
                  onTap: () async {
                    final List<AssetEntity>? assets =
                        await AssetPicker.pickAssets(
                          context,
                          pickerConfig: AssetPickerConfig(
                            requestType: RequestType.image,
                            maxAssets: 1,
                            selectPredicate: (_, entity, isSelected) async {
                              if (await allowSendImageType(entity)) {
                                return true;
                              }
                              if (context.mounted) {
                                Utils.simpleToast(context.t.c.supportsTypeHint);
                              }

                              return false;
                            },
                          ),
                        );
                    final file = await assets?.firstOrNull?.file;

                    if (file?.path != null) {
                      final map = await uCropPic(
                        file!.path,
                        crop: crop,
                        toUrl: toUrl,
                        quality: quality,
                        fileType: fileType,
                      );
                      onData?.call(map['path'], map['url']);
                    }
                  },
                ),
              if (fromCamera)
                SheetItem(
                  label: context.t.c.toolboxCamera,
                  onTap: () async {
                    final AssetEntity? entity =
                        await CameraPicker.pickFromCamera(
                          context,
                          pickerConfig: CameraPickerConfig(
                            enableAudio: true,
                            enableRecording: true,
                            enableScaledPreview: false,
                            maximumRecordingDuration: 60.seconds,
                            onMinimumRecordDurationNotMet: () {
                              Utils.simpleToast(context.t.c.tapTooShort);
                            },
                          ),
                        );

                    final file = await entity?.file;

                    if (file?.path != null) {
                      final map = await uCropPic(
                        file!.path,
                        crop: crop,
                        toUrl: toUrl,
                        quality: quality,
                        fileType: fileType,
                      );
                      onData?.call(map['path'], map['url']);
                    }
                  },
                ),
            ],
          ),
    );
  }

  static Future<Map<String, dynamic>> uCropPic(
    String path, {
    bool crop = true,
    bool toUrl = true,
    int quality = 80,
    FileType fileType = FileType.common,
  }) async {
    CroppedFile? cropFile;
    String? url;
    if (crop && !path.endsWith('.gif')) {
      cropFile = await Utils.uCrop(path, compressQuality: quality);
      if (cropFile == null) {
        return {'path': null, 'url': null};
      }
    }
    if (toUrl) {
      dynamic result;
      if (null != cropFile) {
        Logger.print('-----------crop path: ${cropFile.path}');
        result = await LoadingView.singleton.wrap(
          asyncFunction: () async {
            if (fileType == FileType.avatar) {
              if (await Apis.uploadAvatar(cropFile!.path)) {
                final url = await Apis.getAvatarUrl(DataSp.uid);
                return url;
              } else {
                return '';
              }
            }
            return Apis.uploadFile(path, fileType: fileType);
          },
        );
      } else {
        Logger.print('-----------source path: $path');
        result = await LoadingView.singleton.wrap(
          asyncFunction: () async {
            if (fileType == FileType.avatar) {
              if (await Apis.uploadAvatar(path)) {
                final url = await Apis.getAvatarUrl(DataSp.uid);
                return url;
              } else {
                return '';
              }
            }
            return Apis.uploadFile(path, fileType: fileType);
          },
        );
      }
      if (result is String) {
        url = result;
        Logger.print('url:$url');
      }
    }
    return {'path': cropFile?.path ?? path, 'url': url};
  }
}
