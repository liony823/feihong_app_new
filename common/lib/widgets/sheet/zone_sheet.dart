import 'package:common/common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:world_countries/world_countries.dart' as wc;

class ZoneSheet extends StatefulWidget {
  final String zone;
  final List<Country> countries;
  const ZoneSheet({super.key, required this.zone, required this.countries});

  @override
  State<ZoneSheet> createState() => _ZoneSheetState();
}

class _ZoneSheetState extends State<ZoneSheet> {
  List<Country> _filteredCountries = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      _filteredCountries = widget.countries;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _onChangeSearchText(String? text) {
    setState(() {
      _filteredCountries =
          widget.countries
              .where(
                (element) => _getCountryName(
                  element,
                ).toLowerCase().contains(text?.toLowerCase() ?? ''),
              )
              .toList();
    });
  }

  void _onClose() {
    Global.context?.pop();
  }

  void _onSelect(Country country) {
    Global.context?.pop(country.code);
  }

  String _getCountryName(Country country) {
    final worldCountry = wc.WorldCountry.fromCodeShort(country.iso);
    final tr = worldCountry.maybeTranslation(Global.context?.maybeLocale);
    final title = tr?.name ?? worldCountry.name.common;
    return title;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.primaryLight,
      body: Column(
        spacing: 12.w,
        children: [
          TitleClose(title: context.t.c.zone.title, onClose: _onClose),
          Input(
            name: 'search',
            placeholder: context.t.c.zone.search,
            onChanged: _onChangeSearchText,
          ).paddingHorizontal(16.w),

          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                final country = _filteredCountries[index];

                return _buildItemView(
                  context,
                  country,
                  onPressed: () => _onSelect(country),
                );
              },
              itemCount: _filteredCountries.length,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItemView(
    BuildContext context,
    Country country, {
    VoidCallback? onPressed,
  }) {
    return CupertinoButton(
      onPressed: onPressed,
      sizeStyle: CupertinoButtonSize.small,
      padding: EdgeInsets.zero,
      child: Material(
        color: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Styles.neutral200)),
          ),
          padding: EdgeInsets.symmetric(vertical: 8.w, horizontal: 16.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 12.w,
            children: [
              Text(country.icon).fontSize(18.sp),
              Text(_getCountryName(country))
                  .textColor(Styles.neutral900)
                  .fontSize(18.sp)
                  // .fontFamily(AppTheme.fontFamily)
                  .fontWeight(FontWeight.w500),
              const Spacer(),
              Text("+${country.code}")
                  .fontSize(16.sp)
                  .textColor(Styles.neutral600)
                  // .fontFamily(AppTheme.fontFamily)
                  .fontWeight(FontWeight.w600),
            ],
          ),
        ),
      ),
    );
  }
}
