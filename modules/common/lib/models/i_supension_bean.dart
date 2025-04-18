import 'package:azlistview/azlistview.dart';

class ISuspensionBeanPlus extends ISuspensionBean {
  String? tagIndex;
  String? pinyin;
  String? shortPinyin;
  String? namePinyin;

  ISuspensionBeanPlus({
    this.tagIndex,
    this.pinyin,
    this.shortPinyin,
    this.namePinyin,
  });

  @override
  String getSuspensionTag() {
    return tagIndex ?? '';
  }

  String getName() {
    return '';
  }
}
