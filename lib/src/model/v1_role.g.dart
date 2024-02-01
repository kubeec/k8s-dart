// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_role.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1Role _$V1RoleFromJson(Map<String, dynamic> json) => $checkedCreate(
      'V1Role',
      json,
      ($checkedConvert) {
        final val = V1Role(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          kind: $checkedConvert('kind', (v) => v as String?),
          metadata: $checkedConvert(
              'metadata',
              (v) => v == null
                  ? null
                  : V1ObjectMeta.fromJson(v as Map<String, dynamic>)),
          rules: $checkedConvert(
              'rules',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1PolicyRule.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1RoleToJson(V1Role instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiVersion', instance.apiVersion);
  writeNotNull('kind', instance.kind);
  writeNotNull('metadata', instance.metadata?.toJson());
  writeNotNull('rules', instance.rules?.map((e) => e.toJson()).toList());
  return val;
}
