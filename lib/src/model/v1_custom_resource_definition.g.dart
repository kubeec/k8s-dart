// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_custom_resource_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1CustomResourceDefinition _$V1CustomResourceDefinitionFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1CustomResourceDefinition',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['spec'],
        );
        final val = V1CustomResourceDefinition(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          kind: $checkedConvert('kind', (v) => v as String?),
          metadata: $checkedConvert(
              'metadata',
              (v) => v == null
                  ? null
                  : V1ObjectMeta.fromJson(v as Map<String, dynamic>)),
          spec: $checkedConvert(
              'spec',
              (v) => V1CustomResourceDefinitionSpec.fromJson(
                  v as Map<String, dynamic>)),
          status: $checkedConvert(
              'status',
              (v) => v == null
                  ? null
                  : V1CustomResourceDefinitionStatus.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1CustomResourceDefinitionToJson(
    V1CustomResourceDefinition instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiVersion', instance.apiVersion);
  writeNotNull('kind', instance.kind);
  writeNotNull('metadata', instance.metadata?.toJson());
  val['spec'] = instance.spec.toJson();
  writeNotNull('status', instance.status?.toJson());
  return val;
}
