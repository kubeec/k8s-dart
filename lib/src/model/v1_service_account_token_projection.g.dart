// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_service_account_token_projection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ServiceAccountTokenProjection _$V1ServiceAccountTokenProjectionFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ServiceAccountTokenProjection',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['path'],
        );
        final val = V1ServiceAccountTokenProjection(
          audience: $checkedConvert('audience', (v) => v as String?),
          expirationSeconds:
              $checkedConvert('expirationSeconds', (v) => v as int?),
          path: $checkedConvert('path', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ServiceAccountTokenProjectionToJson(
    V1ServiceAccountTokenProjection instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('audience', instance.audience);
  writeNotNull('expirationSeconds', instance.expirationSeconds);
  val['path'] = instance.path;
  return val;
}
