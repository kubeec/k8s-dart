// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1beta3_limit_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1beta3LimitResponse _$V1beta3LimitResponseFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1beta3LimitResponse',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['type'],
        );
        final val = V1beta3LimitResponse(
          queuing: $checkedConvert(
              'queuing',
              (v) => v == null
                  ? null
                  : V1beta3QueuingConfiguration.fromJson(
                      v as Map<String, dynamic>)),
          type: $checkedConvert('type', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1beta3LimitResponseToJson(
    V1beta3LimitResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('queuing', instance.queuing?.toJson());
  val['type'] = instance.type;
  return val;
}
