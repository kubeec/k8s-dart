// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_custom_resource_definition_version.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1CustomResourceDefinitionVersion _$V1CustomResourceDefinitionVersionFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1CustomResourceDefinitionVersion',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['name', 'served', 'storage'],
        );
        final val = V1CustomResourceDefinitionVersion(
          additionalPrinterColumns: $checkedConvert(
              'additionalPrinterColumns',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1CustomResourceColumnDefinition.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          deprecated: $checkedConvert('deprecated', (v) => v as bool?),
          deprecationWarning:
              $checkedConvert('deprecationWarning', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String),
          schema: $checkedConvert(
              'schema',
              (v) => v == null
                  ? null
                  : V1CustomResourceValidation.fromJson(
                      v as Map<String, dynamic>)),
          served: $checkedConvert('served', (v) => v as bool),
          storage: $checkedConvert('storage', (v) => v as bool),
          subresources: $checkedConvert(
              'subresources',
              (v) => v == null
                  ? null
                  : V1CustomResourceSubresources.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1CustomResourceDefinitionVersionToJson(
    V1CustomResourceDefinitionVersion instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('additionalPrinterColumns',
      instance.additionalPrinterColumns?.map((e) => e.toJson()).toList());
  writeNotNull('deprecated', instance.deprecated);
  writeNotNull('deprecationWarning', instance.deprecationWarning);
  val['name'] = instance.name;
  writeNotNull('schema', instance.schema?.toJson());
  val['served'] = instance.served;
  val['storage'] = instance.storage;
  writeNotNull('subresources', instance.subresources?.toJson());
  return val;
}
