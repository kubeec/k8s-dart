// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_seccomp_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1SeccompProfile _$V1SeccompProfileFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1SeccompProfile',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['type'],
        );
        final val = V1SeccompProfile(
          localhostProfile:
              $checkedConvert('localhostProfile', (v) => v as String?),
          type: $checkedConvert('type', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1SeccompProfileToJson(V1SeccompProfile instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('localhostProfile', instance.localhostProfile);
  val['type'] = instance.type;
  return val;
}
