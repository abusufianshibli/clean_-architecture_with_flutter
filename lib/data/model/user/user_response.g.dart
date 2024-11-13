// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserResponseImpl _$$UserResponseImplFromJson(Map<String, dynamic> json) =>
    _$UserResponseImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      designation: json['designation'] as String?,
      email: json['email'] as String?,
      isActive: json['isActive'] as bool?,
      office: json['office'] as String?,
      officeAddress: json['officeAddress'] as String?,
      officeLatitude: (json['officeLatitude'] as num?)?.toDouble(),
      officeLongitude: (json['officeLongitude'] as num?)?.toDouble(),
      officeRadius: (json['officeRadius'] as num?)?.toInt(),
      teamName: json['teamName'] as String?,
      role: json['role'] as String?,
    );

Map<String, dynamic> _$$UserResponseImplToJson(_$UserResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'designation': instance.designation,
      'email': instance.email,
      'isActive': instance.isActive,
      'office': instance.office,
      'officeAddress': instance.officeAddress,
      'officeLatitude': instance.officeLatitude,
      'officeLongitude': instance.officeLongitude,
      'officeRadius': instance.officeRadius,
      'teamName': instance.teamName,
      'role': instance.role,
    };
