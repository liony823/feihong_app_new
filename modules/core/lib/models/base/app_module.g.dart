// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_module.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppModule _$AppModuleFromJson(Map<String, dynamic> json) => _AppModule(
      sid: json['sid'] as String,
      name: json['name'] as String,
      desc: json['desc'] as String,
      status: (json['status'] as num).toInt(),
    );

Map<String, dynamic> _$AppModuleToJson(_AppModule instance) =>
    <String, dynamic>{
      'sid': instance.sid,
      'name': instance.name,
      'desc': instance.desc,
      'status': instance.status,
    };
