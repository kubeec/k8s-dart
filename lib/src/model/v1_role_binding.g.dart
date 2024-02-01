// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_role_binding.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1RoleBinding _$V1RoleBindingFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1RoleBinding',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['roleRef'],
        );
        final val = V1RoleBinding(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          kind: $checkedConvert('kind', (v) => v as String?),
          metadata: $checkedConvert(
              'metadata',
              (v) => v == null
                  ? null
                  : V1ObjectMeta.fromJson(v as Map<String, dynamic>)),
          roleRef: $checkedConvert(
              'roleRef', (v) => V1RoleRef.fromJson(v as Map<String, dynamic>)),
          subjects: $checkedConvert(
              'subjects',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1Subject.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1RoleBindingToJson(V1RoleBinding instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiVersion', instance.apiVersion);
  writeNotNull('kind', instance.kind);
  writeNotNull('metadata', instance.metadata?.toJson());
  val['roleRef'] = instance.roleRef.toJson();
  writeNotNull('subjects', instance.subjects?.map((e) => e.toJson()).toList());
  return val;
}
