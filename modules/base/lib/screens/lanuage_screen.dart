import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:world_countries/world_countries.dart';

const sortedCountryCodeList = [
  "en",
  "zh",
  "es",
  "fr",
  "de",
  "it",
  "ja",
  "ko",
  "ru",
  "pt",
  "ar",
  "it",
  "tr",
  "vi",
  "th",
  "id",
  "in",
  "my",
];

@RoutePage()
class LanguageScreen extends HookConsumerWidget {
  const LanguageScreen({super.key});

  List<NaturalLanguage> get sortedLanguageList {
    List<NaturalLanguage> list = List.from(NaturalLanguage.list);
    list.sort((a, b) {
      final aIndex = sortedCountryCodeList.indexOf(a.codeShort.toLowerCase());
      final bIndex = sortedCountryCodeList.indexOf(b.codeShort.toLowerCase());

      // 如果两个元素都不在 sortedCountryCodeList 中,保持原顺序
      if (aIndex == -1 && bIndex == -1) {
        return 0;
      }

      // 如果只有一个元素在 sortedCountryCodeList 中,将其排在前面
      if (aIndex == -1) return 1;
      if (bIndex == -1) return -1;

      // 如果两个元素都在 sortedCountryCodeList 中,按照列表中的顺序排序
      return aIndex.compareTo(bIndex);
    });
    return list;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localeController = ref.read(localeControllerProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: Text(context.t.c.language.title),
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 16.w),
        itemCount: sortedLanguageList.length,
        itemBuilder: (context, index) {
          final language = sortedLanguageList[index];
          return _buildItemView(
            localeController.getTranslatedBaseLanguage(language),
            onSelect: () => localeController.onSelectLanguage(language),
            isSelect: localeController.isCurrentLanguage(language),
          );
        },
      ),
    );
  }

  Widget _buildItemView(String text,
      {VoidCallback? onSelect, required bool isSelect}) {
    return InkWell(
      onTap: onSelect,
      splashColor: AppTheme.brandColor.withValues(alpha: 0.05),
      highlightColor: AppTheme.brandColor.withValues(alpha: 0.05),
      child: Container(
        height: 48.h,
        margin: EdgeInsets.symmetric(horizontal: 24.w),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: AppTheme.dividerColor,
              width: 1,
            ),
          ),
        ),
        child: LayoutBuilder(builder: (context, constraints) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            spacing: 24.w,
            children: [
              SizedBox(
                width: constraints.maxWidth * 0.8,
                child: Text(text,
                    style: TextStyle(
                      color: isSelect
                          ? AppTheme.brandColor
                          : AppTheme.lightTextColor,
                      fontSize: 14.sp,
                      fontWeight: isSelect ? FontWeight.w500 : FontWeight.w400,
                    ),
                    overflow: TextOverflow.ellipsis),
              ),
              Visibility(
                visible: isSelect,
                child: Icon(Icons.check_circle_outline,
                    color: AppTheme.brandColor, size: 22.r),
              ),
            ],
          );
        }),
      ),
    );
  }
}
