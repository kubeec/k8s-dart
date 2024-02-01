// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_role_ref.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1RoleRef _$V1RoleRefFromJson(Map<String, dynamic> json) => $checkedCreate(
      'V1RoleRef',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['apiGroup', 'kind', 'name'],
        );
        final val = V1RoleRef(
          apiGroup: $checkedConvert('apiGroup', (v) => v as String),
          kind: $checkedConvert('kind', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1RoleRefToJson(V1RoleRef instance) => <String, dynamic>{
      'apiGroup': instance.apiGroup,
      'kind': instance.kind,
      'name': instance.name,
    };
