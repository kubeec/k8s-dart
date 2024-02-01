// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1alpha1_match_resources.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1alpha1MatchResources _$V1alpha1MatchResourcesFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1alpha1MatchResources',
      json,
      ($checkedConvert) {
        final val = V1alpha1MatchResources(
          excludeResourceRules: $checkedConvert(
              'excludeResourceRules',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1alpha1NamedRuleWithOperations.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          matchPolicy: $checkedConvert('matchPolicy', (v) => v as String?),
          namespaceSelector: $checkedConvert(
              'namespaceSelector',
              (v) => v == null
                  ? null
                  : V1LabelSelector.fromJson(v as Map<String, dynamic>)),
          objectSelector: $checkedConvert(
              'objectSelector',
              (v) => v == null
                  ? null
                  : V1LabelSelector.fromJson(v as Map<String, dynamic>)),
          resourceRules: $checkedConvert(
              'resourceRules',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1alpha1NamedRuleWithOperations.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1alpha1MatchResourcesToJson(
    V1alpha1MatchResources instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('excludeResourceRules',
      instance.excludeResourceRules?.map((e) => e.toJson()).toList());
  writeNotNull('matchPolicy', instance.matchPolicy);
  writeNotNull('namespaceSelector', instance.namespaceSelector?.toJson());
  writeNotNull('objectSelector', instance.objectSelector?.toJson());
  writeNotNull(
      'resourceRules', instance.resourceRules?.map((e) => e.toJson()).toList());
  return val;
}
