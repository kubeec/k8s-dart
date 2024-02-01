// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_resource_quota_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ResourceQuotaStatus _$V1ResourceQuotaStatusFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ResourceQuotaStatus',
      json,
      ($checkedConvert) {
        final val = V1ResourceQuotaStatus(
          hard: $checkedConvert(
              'hard',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  )),
          used: $checkedConvert(
              'used',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  )),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ResourceQuotaStatusToJson(
    V1ResourceQuotaStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('hard', instance.hard);
  writeNotNull('used', instance.used);
  return val;
}
