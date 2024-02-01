// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_api_service_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1APIServiceStatus _$V1APIServiceStatusFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1APIServiceStatus',
      json,
      ($checkedConvert) {
        final val = V1APIServiceStatus(
          conditions: $checkedConvert(
              'conditions',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      V1APIServiceCondition.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1APIServiceStatusToJson(V1APIServiceStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'conditions', instance.conditions?.map((e) => e.toJson()).toList());
  return val;
}
