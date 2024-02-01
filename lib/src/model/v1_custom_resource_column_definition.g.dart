// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_custom_resource_column_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1CustomResourceColumnDefinition _$V1CustomResourceColumnDefinitionFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1CustomResourceColumnDefinition',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['jsonPath', 'name', 'type'],
        );
        final val = V1CustomResourceColumnDefinition(
          description: $checkedConvert('description', (v) => v as String?),
          format: $checkedConvert('format', (v) => v as String?),
          jsonPath: $checkedConvert('jsonPath', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          priority: $checkedConvert('priority', (v) => v as int?),
          type: $checkedConvert('type', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1CustomResourceColumnDefinitionToJson(
    V1CustomResourceColumnDefinition instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('format', instance.format);
  val['jsonPath'] = instance.jsonPath;
  val['name'] = instance.name;
  writeNotNull('priority', instance.priority);
  val['type'] = instance.type;
  return val;
}
