// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Country _$CountryFromJson(Map<String, dynamic> json) => _Country(
  name: json['name'] as String,
  code: json['code'] as String,
  icon: json['icon'] as String,
  iso: json['iso'] as String,
);

Map<String, dynamic> _$CountryToJson(_Country instance) => <String, dynamic>{
  'name': instance.name,
  'code': instance.code,
  'icon': instance.icon,
  'iso': instance.iso,
};
