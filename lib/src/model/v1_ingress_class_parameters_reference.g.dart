// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_ingress_class_parameters_reference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1IngressClassParametersReference _$V1IngressClassParametersReferenceFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1IngressClassParametersReference',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['kind', 'name'],
        );
        final val = V1IngressClassParametersReference(
          apiGroup: $checkedConvert('apiGroup', (v) => v as String?),
          kind: $checkedConvert('kind', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          namespace: $checkedConvert('namespace', (v) => v as String?),
          scope: $checkedConvert('scope', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1IngressClassParametersReferenceToJson(
    V1IngressClassParametersReference instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiGroup', instance.apiGroup);
  val['kind'] = instance.kind;
  val['name'] = instance.name;
  writeNotNull('namespace', instance.namespace);
  writeNotNull('scope', instance.scope);
  return val;
}
