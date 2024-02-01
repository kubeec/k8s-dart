// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_rule_with_operations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1RuleWithOperations _$V1RuleWithOperationsFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1RuleWithOperations',
      json,
      ($checkedConvert) {
        final val = V1RuleWithOperations(
          apiGroups: $checkedConvert('apiGroups',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          apiVersions: $checkedConvert('apiVersions',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          operations: $checkedConvert('operations',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          resources: $checkedConvert('resources',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          scope: $checkedConvert('scope', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1RuleWithOperationsToJson(
    V1RuleWithOperations instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiGroups', instance.apiGroups);
  writeNotNull('apiVersions', instance.apiVersions);
  writeNotNull('operations', instance.operations);
  writeNotNull('resources', instance.resources);
  writeNotNull('scope', instance.scope);
  return val;
}
