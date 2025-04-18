// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Applet _$AppletFromJson(Map<String, dynamic> json) => _Applet(
      id: (json['id'] as num).toInt(),
      displayName: json['display_name'] as String,
      key: json['key'] as String,
      icon: json['icon'] as String,
      link: json['link'] as String,
      priority: (json['priority'] as num).toInt(),
      status: (json['status'] as num).toInt(),
      isDefault: (json['is_default'] as num).toInt(),
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$AppletToJson(_Applet instance) => <String, dynamic>{
      'id': instance.id,
      'display_name': instance.displayName,
      'key': instance.key,
      'icon': instance.icon,
      'link': instance.link,
      'priority': instance.priority,
      'status': instance.status,
      'is_default': instance.isDefault,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
