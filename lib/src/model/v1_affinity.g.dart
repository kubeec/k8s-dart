// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_affinity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1Affinity _$V1AffinityFromJson(Map<String, dynamic> json) => $checkedCreate(
      'V1Affinity',
      json,
      ($checkedConvert) {
        final val = V1Affinity(
          nodeAffinity: $checkedConvert(
              'nodeAffinity',
              (v) => v == null
                  ? null
                  : V1NodeAffinity.fromJson(v as Map<String, dynamic>)),
          podAffinity: $checkedConvert(
              'podAffinity',
              (v) => v == null
                  ? null
                  : V1PodAffinity.fromJson(v as Map<String, dynamic>)),
          podAntiAffinity: $checkedConvert(
              'podAntiAffinity',
              (v) => v == null
                  ? null
                  : V1PodAntiAffinity.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1AffinityToJson(V1Affinity instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('nodeAffinity', instance.nodeAffinity?.toJson());
  writeNotNull('podAffinity', instance.podAffinity?.toJson());
  writeNotNull('podAntiAffinity', instance.podAntiAffinity?.toJson());
  return val;
}
