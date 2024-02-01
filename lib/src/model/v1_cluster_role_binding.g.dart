// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_cluster_role_binding.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ClusterRoleBinding _$V1ClusterRoleBindingFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ClusterRoleBinding',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['roleRef'],
        );
        final val = V1ClusterRoleBinding(
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

Map<String, dynamic> _$V1ClusterRoleBindingToJson(
    V1ClusterRoleBinding instance) {
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
