// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1beta2_flow_schema_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1beta2FlowSchemaSpec _$V1beta2FlowSchemaSpecFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1beta2FlowSchemaSpec',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['priorityLevelConfiguration'],
        );
        final val = V1beta2FlowSchemaSpec(
          distinguisherMethod: $checkedConvert(
              'distinguisherMethod',
              (v) => v == null
                  ? null
                  : V1beta2FlowDistinguisherMethod.fromJson(
                      v as Map<String, dynamic>)),
          matchingPrecedence:
              $checkedConvert('matchingPrecedence', (v) => v as int?),
          priorityLevelConfiguration: $checkedConvert(
              'priorityLevelConfiguration',
              (v) => V1beta2PriorityLevelConfigurationReference.fromJson(
                  v as Map<String, dynamic>)),
          rules: $checkedConvert(
              'rules',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1beta2PolicyRulesWithSubjects.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1beta2FlowSchemaSpecToJson(
    V1beta2FlowSchemaSpec instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('distinguisherMethod', instance.distinguisherMethod?.toJson());
  writeNotNull('matchingPrecedence', instance.matchingPrecedence);
  val['priorityLevelConfiguration'] =
      instance.priorityLevelConfiguration.toJson();
  writeNotNull('rules', instance.rules?.map((e) => e.toJson()).toList());
  return val;
}
