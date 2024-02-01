// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1beta2_subject.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1beta2Subject _$V1beta2SubjectFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1beta2Subject',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['kind'],
        );
        final val = V1beta2Subject(
          group: $checkedConvert(
              'group',
              (v) => v == null
                  ? null
                  : V1beta2GroupSubject.fromJson(v as Map<String, dynamic>)),
          kind: $checkedConvert('kind', (v) => v as String),
          serviceAccount: $checkedConvert(
              'serviceAccount',
              (v) => v == null
                  ? null
                  : V1beta2ServiceAccountSubject.fromJson(
                      v as Map<String, dynamic>)),
          user: $checkedConvert(
              'user',
              (v) => v == null
                  ? null
                  : V1beta2UserSubject.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1beta2SubjectToJson(V1beta2Subject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('group', instance.group?.toJson());
  val['kind'] = instance.kind;
  writeNotNull('serviceAccount', instance.serviceAccount?.toJson());
  writeNotNull('user', instance.user?.toJson());
  return val;
}
