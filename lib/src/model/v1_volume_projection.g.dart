// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_volume_projection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1VolumeProjection _$V1VolumeProjectionFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1VolumeProjection',
      json,
      ($checkedConvert) {
        final val = V1VolumeProjection(
          configMap: $checkedConvert(
              'configMap',
              (v) => v == null
                  ? null
                  : V1ConfigMapProjection.fromJson(v as Map<String, dynamic>)),
          downwardAPI: $checkedConvert(
              'downwardAPI',
              (v) => v == null
                  ? null
                  : V1DownwardAPIProjection.fromJson(
                      v as Map<String, dynamic>)),
          secret: $checkedConvert(
              'secret',
              (v) => v == null
                  ? null
                  : V1SecretProjection.fromJson(v as Map<String, dynamic>)),
          serviceAccountToken: $checkedConvert(
              'serviceAccountToken',
              (v) => v == null
                  ? null
                  : V1ServiceAccountTokenProjection.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1VolumeProjectionToJson(V1VolumeProjection instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('configMap', instance.configMap?.toJson());
  writeNotNull('downwardAPI', instance.downwardAPI?.toJson());
  writeNotNull('secret', instance.secret?.toJson());
  writeNotNull('serviceAccountToken', instance.serviceAccountToken?.toJson());
  return val;
}
