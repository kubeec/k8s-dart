// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_namespace_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1NamespaceStatus _$V1NamespaceStatusFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1NamespaceStatus',
      json,
      ($checkedConvert) {
        final val = V1NamespaceStatus(
          conditions: $checkedConvert(
              'conditions',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      V1NamespaceCondition.fromJson(e as Map<String, dynamic>))
                  .toList()),
          phase: $checkedConvert('phase', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1NamespaceStatusToJson(V1NamespaceStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'conditions', instance.conditions?.map((e) => e.toJson()).toList());
  writeNotNull('phase', instance.phase);
  return val;
}
