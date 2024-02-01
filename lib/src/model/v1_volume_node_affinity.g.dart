// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_volume_node_affinity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1VolumeNodeAffinity _$V1VolumeNodeAffinityFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1VolumeNodeAffinity',
      json,
      ($checkedConvert) {
        final val = V1VolumeNodeAffinity(
          required_: $checkedConvert(
              'required',
              (v) => v == null
                  ? null
                  : V1NodeSelector.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {'required_': 'required'},
    );

Map<String, dynamic> _$V1VolumeNodeAffinityToJson(
    V1VolumeNodeAffinity instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('required', instance.required_?.toJson());
  return val;
}
