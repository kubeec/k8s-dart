// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_scale_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ScaleSpec _$V1ScaleSpecFromJson(Map<String, dynamic> json) => $checkedCreate(
      'V1ScaleSpec',
      json,
      ($checkedConvert) {
        final val = V1ScaleSpec(
          replicas: $checkedConvert('replicas', (v) => v as int?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ScaleSpecToJson(V1ScaleSpec instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('replicas', instance.replicas);
  return val;
}
