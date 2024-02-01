// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_json_schema_props.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1JSONSchemaProps _$V1JSONSchemaPropsFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1JSONSchemaProps',
      json,
      ($checkedConvert) {
        final val = V1JSONSchemaProps(
          dollarRef: $checkedConvert(r'$ref', (v) => v as String?),
          dollarSchema: $checkedConvert(r'$schema', (v) => v as String?),
          additionalItems: $checkedConvert('additionalItems', (v) => v),
          additionalProperties:
              $checkedConvert('additionalProperties', (v) => v),
          allOf: $checkedConvert(
              'allOf',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      V1JSONSchemaProps.fromJson(e as Map<String, dynamic>))
                  .toList()),
          anyOf: $checkedConvert(
              'anyOf',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      V1JSONSchemaProps.fromJson(e as Map<String, dynamic>))
                  .toList()),
          default_: $checkedConvert('default', (v) => v),
          definitions: $checkedConvert(
              'definitions',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k,
                        V1JSONSchemaProps.fromJson(e as Map<String, dynamic>)),
                  )),
          dependencies: $checkedConvert(
              'dependencies',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as Object),
                  )),
          description: $checkedConvert('description', (v) => v as String?),
          enum_: $checkedConvert('enum',
              (v) => (v as List<dynamic>?)?.map((e) => e as Object).toList()),
          example: $checkedConvert('example', (v) => v),
          exclusiveMaximum:
              $checkedConvert('exclusiveMaximum', (v) => v as bool?),
          exclusiveMinimum:
              $checkedConvert('exclusiveMinimum', (v) => v as bool?),
          externalDocs: $checkedConvert(
              'externalDocs',
              (v) => v == null
                  ? null
                  : V1ExternalDocumentation.fromJson(
                      v as Map<String, dynamic>)),
          format: $checkedConvert('format', (v) => v as String?),
          id: $checkedConvert('id', (v) => v as String?),
          items: $checkedConvert('items', (v) => v),
          maxItems: $checkedConvert('maxItems', (v) => v as int?),
          maxLength: $checkedConvert('maxLength', (v) => v as int?),
          maxProperties: $checkedConvert('maxProperties', (v) => v as int?),
          maximum: $checkedConvert('maximum', (v) => (v as num?)?.toDouble()),
          minItems: $checkedConvert('minItems', (v) => v as int?),
          minLength: $checkedConvert('minLength', (v) => v as int?),
          minProperties: $checkedConvert('minProperties', (v) => v as int?),
          minimum: $checkedConvert('minimum', (v) => (v as num?)?.toDouble()),
          multipleOf:
              $checkedConvert('multipleOf', (v) => (v as num?)?.toDouble()),
          not: $checkedConvert(
              'not',
              (v) => v == null
                  ? null
                  : V1JSONSchemaProps.fromJson(v as Map<String, dynamic>)),
          nullable: $checkedConvert('nullable', (v) => v as bool?),
          oneOf: $checkedConvert(
              'oneOf',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      V1JSONSchemaProps.fromJson(e as Map<String, dynamic>))
                  .toList()),
          pattern: $checkedConvert('pattern', (v) => v as String?),
          patternProperties: $checkedConvert(
              'patternProperties',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k,
                        V1JSONSchemaProps.fromJson(e as Map<String, dynamic>)),
                  )),
          properties: $checkedConvert(
              'properties',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k,
                        V1JSONSchemaProps.fromJson(e as Map<String, dynamic>)),
                  )),
          required_: $checkedConvert('required',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          title: $checkedConvert('title', (v) => v as String?),
          type: $checkedConvert('type', (v) => v as String?),
          uniqueItems: $checkedConvert('uniqueItems', (v) => v as bool?),
          xKubernetesEmbeddedResource: $checkedConvert(
              'x-kubernetes-embedded-resource', (v) => v as bool?),
          xKubernetesIntOrString:
              $checkedConvert('x-kubernetes-int-or-string', (v) => v as bool?),
          xKubernetesListMapKeys: $checkedConvert('x-kubernetes-list-map-keys',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          xKubernetesListType:
              $checkedConvert('x-kubernetes-list-type', (v) => v as String?),
          xKubernetesMapType:
              $checkedConvert('x-kubernetes-map-type', (v) => v as String?),
          xKubernetesPreserveUnknownFields: $checkedConvert(
              'x-kubernetes-preserve-unknown-fields', (v) => v as bool?),
          xKubernetesValidations: $checkedConvert(
              'x-kubernetes-validations',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      V1ValidationRule.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {
        'dollarRef': r'$ref',
        'dollarSchema': r'$schema',
        'default_': 'default',
        'enum_': 'enum',
        'required_': 'required',
        'xKubernetesEmbeddedResource': 'x-kubernetes-embedded-resource',
        'xKubernetesIntOrString': 'x-kubernetes-int-or-string',
        'xKubernetesListMapKeys': 'x-kubernetes-list-map-keys',
        'xKubernetesListType': 'x-kubernetes-list-type',
        'xKubernetesMapType': 'x-kubernetes-map-type',
        'xKubernetesPreserveUnknownFields':
            'x-kubernetes-preserve-unknown-fields',
        'xKubernetesValidations': 'x-kubernetes-validations'
      },
    );

Map<String, dynamic> _$V1JSONSchemaPropsToJson(V1JSONSchemaProps instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(r'$ref', instance.dollarRef);
  writeNotNull(r'$schema', instance.dollarSchema);
  writeNotNull('additionalItems', instance.additionalItems);
  writeNotNull('additionalProperties', instance.additionalProperties);
  writeNotNull('allOf', instance.allOf?.map((e) => e.toJson()).toList());
  writeNotNull('anyOf', instance.anyOf?.map((e) => e.toJson()).toList());
  writeNotNull('default', instance.default_);
  writeNotNull('definitions',
      instance.definitions?.map((k, e) => MapEntry(k, e.toJson())));
  writeNotNull('dependencies', instance.dependencies);
  writeNotNull('description', instance.description);
  writeNotNull('enum', instance.enum_);
  writeNotNull('example', instance.example);
  writeNotNull('exclusiveMaximum', instance.exclusiveMaximum);
  writeNotNull('exclusiveMinimum', instance.exclusiveMinimum);
  writeNotNull('externalDocs', instance.externalDocs?.toJson());
  writeNotNull('format', instance.format);
  writeNotNull('id', instance.id);
  writeNotNull('items', instance.items);
  writeNotNull('maxItems', instance.maxItems);
  writeNotNull('maxLength', instance.maxLength);
  writeNotNull('maxProperties', instance.maxProperties);
  writeNotNull('maximum', instance.maximum);
  writeNotNull('minItems', instance.minItems);
  writeNotNull('minLength', instance.minLength);
  writeNotNull('minProperties', instance.minProperties);
  writeNotNull('minimum', instance.minimum);
  writeNotNull('multipleOf', instance.multipleOf);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('nullable', instance.nullable);
  writeNotNull('oneOf', instance.oneOf?.map((e) => e.toJson()).toList());
  writeNotNull('pattern', instance.pattern);
  writeNotNull('patternProperties',
      instance.patternProperties?.map((k, e) => MapEntry(k, e.toJson())));
  writeNotNull('properties',
      instance.properties?.map((k, e) => MapEntry(k, e.toJson())));
  writeNotNull('required', instance.required_);
  writeNotNull('title', instance.title);
  writeNotNull('type', instance.type);
  writeNotNull('uniqueItems', instance.uniqueItems);
  writeNotNull(
      'x-kubernetes-embedded-resource', instance.xKubernetesEmbeddedResource);
  writeNotNull('x-kubernetes-int-or-string', instance.xKubernetesIntOrString);
  writeNotNull('x-kubernetes-list-map-keys', instance.xKubernetesListMapKeys);
  writeNotNull('x-kubernetes-list-type', instance.xKubernetesListType);
  writeNotNull('x-kubernetes-map-type', instance.xKubernetesMapType);
  writeNotNull('x-kubernetes-preserve-unknown-fields',
      instance.xKubernetesPreserveUnknownFields);
  writeNotNull('x-kubernetes-validations',
      instance.xKubernetesValidations?.map((e) => e.toJson()).toList());
  return val;
}
