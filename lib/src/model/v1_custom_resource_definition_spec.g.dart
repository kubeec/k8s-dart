// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_custom_resource_definition_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1CustomResourceDefinitionSpec _$V1CustomResourceDefinitionSpecFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1CustomResourceDefinitionSpec',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['group', 'names', 'scope', 'versions'],
        );
        final val = V1CustomResourceDefinitionSpec(
          conversion: $checkedConvert(
              'conversion',
              (v) => v == null
                  ? null
                  : V1CustomResourceConversion.fromJson(
                      v as Map<String, dynamic>)),
          group: $checkedConvert('group', (v) => v as String),
          names: $checkedConvert(
              'names',
              (v) => V1CustomResourceDefinitionNames.fromJson(
                  v as Map<String, dynamic>)),
          preserveUnknownFields:
              $checkedConvert('preserveUnknownFields', (v) => v as bool?),
          scope: $checkedConvert('scope', (v) => v as String),
          versions: $checkedConvert(
              'versions',
              (v) => (v as List<dynamic>)
                  .map((e) => V1CustomResourceDefinitionVersion.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1CustomResourceDefinitionSpecToJson(
    V1CustomResourceDefinitionSpec instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('conversion', instance.conversion?.toJson());
  val['group'] = instance.group;
  val['names'] = instance.names.toJson();
  writeNotNull('preserveUnknownFields', instance.preserveUnknownFields);
  val['scope'] = instance.scope;
  val['versions'] = instance.versions.map((e) => e.toJson()).toList();
  return val;
}
