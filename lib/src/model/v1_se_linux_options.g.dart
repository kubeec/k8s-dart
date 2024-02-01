// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_se_linux_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1SELinuxOptions _$V1SELinuxOptionsFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1SELinuxOptions',
      json,
      ($checkedConvert) {
        final val = V1SELinuxOptions(
          level: $checkedConvert('level', (v) => v as String?),
          role: $checkedConvert('role', (v) => v as String?),
          type: $checkedConvert('type', (v) => v as String?),
          user: $checkedConvert('user', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1SELinuxOptionsToJson(V1SELinuxOptions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('level', instance.level);
  writeNotNull('role', instance.role);
  writeNotNull('type', instance.type);
  writeNotNull('user', instance.user);
  return val;
}
