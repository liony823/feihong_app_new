import 'package:common/common.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:world_countries/world_countries.dart' as wc;

part 'country.g.dart';

@riverpod
Future<List<Country>> getCountryList(Ref ref) {
  return Apis.getCountryList();
}

@riverpod
Future<String> getSIMCountryCode(Ref ref) async {
  final countryCode = await Utils.getSIMCountryCode();
  final country = wc.WorldCountry.fromCodeShort(countryCode);
  return country.idd.phoneCode();
}
