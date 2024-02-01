// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1alpha1_named_rule_with_operations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1alpha1NamedRuleWithOperations _$V1alpha1NamedRuleWithOperationsFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1alpha1NamedRuleWithOperations',
      json,
      ($checkedConvert) {
        final val = V1alpha1NamedRuleWithOperations(
          apiGroups: $checkedConvert('apiGroups',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          apiVersions: $checkedConvert('apiVersions',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          operations: $checkedConvert('operations',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          resourceNames: $checkedConvert('resourceNames',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          resources: $checkedConvert('resources',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          scope: $checkedConvert('scope', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1alpha1NamedRuleWithOperationsToJson(
    V1alpha1NamedRuleWithOperations instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiGroups', instance.apiGroups);
  writeNotNull('apiVersions', instance.apiVersions);
  writeNotNull('operations', instance.operations);
  writeNotNull('resourceNames', instance.resourceNames);
  writeNotNull('resources', instance.resources);
  writeNotNull('scope', instance.scope);
  return val;
}
