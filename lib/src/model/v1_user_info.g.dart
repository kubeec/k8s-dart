// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1UserInfo _$V1UserInfoFromJson(Map<String, dynamic> json) => $checkedCreate(
      'V1UserInfo',
      json,
      ($checkedConvert) {
        final val = V1UserInfo(
          extra: $checkedConvert(
              'extra',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k,
                        (e as List<dynamic>).map((e) => e as String).toList()),
                  )),
          groups: $checkedConvert('groups',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          uid: $checkedConvert('uid', (v) => v as String?),
          username: $checkedConvert('username', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1UserInfoToJson(V1UserInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('extra', instance.extra);
  writeNotNull('groups', instance.groups);
  writeNotNull('uid', instance.uid);
  writeNotNull('username', instance.username);
  return val;
}
