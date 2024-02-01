// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_custom_resource_definition_names.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1CustomResourceDefinitionNames _$V1CustomResourceDefinitionNamesFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1CustomResourceDefinitionNames',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['kind', 'plural'],
        );
        final val = V1CustomResourceDefinitionNames(
          categories: $checkedConvert('categories',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          kind: $checkedConvert('kind', (v) => v as String),
          listKind: $checkedConvert('listKind', (v) => v as String?),
          plural: $checkedConvert('plural', (v) => v as String),
          shortNames: $checkedConvert('shortNames',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          singular: $checkedConvert('singular', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1CustomResourceDefinitionNamesToJson(
    V1CustomResourceDefinitionNames instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('categories', instance.categories);
  val['kind'] = instance.kind;
  writeNotNull('listKind', instance.listKind);
  val['plural'] = instance.plural;
  writeNotNull('shortNames', instance.shortNames);
  writeNotNull('singular', instance.singular);
  return val;
}
