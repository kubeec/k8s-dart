// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_session_affinity_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1SessionAffinityConfig _$V1SessionAffinityConfigFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1SessionAffinityConfig',
      json,
      ($checkedConvert) {
        final val = V1SessionAffinityConfig(
          clientIP: $checkedConvert(
              'clientIP',
              (v) => v == null
                  ? null
                  : V1ClientIPConfig.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1SessionAffinityConfigToJson(
    V1SessionAffinityConfig instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('clientIP', instance.clientIP?.toJson());
  return val;
}
