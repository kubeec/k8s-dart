// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1beta3_subject.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1beta3Subject _$V1beta3SubjectFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1beta3Subject',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['kind'],
        );
        final val = V1beta3Subject(
          group: $checkedConvert(
              'group',
              (v) => v == null
                  ? null
                  : V1beta3GroupSubject.fromJson(v as Map<String, dynamic>)),
          kind: $checkedConvert('kind', (v) => v as String),
          serviceAccount: $checkedConvert(
              'serviceAccount',
              (v) => v == null
                  ? null
                  : V1beta3ServiceAccountSubject.fromJson(
                      v as Map<String, dynamic>)),
          user: $checkedConvert(
              'user',
              (v) => v == null
                  ? null
                  : V1beta3UserSubject.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1beta3SubjectToJson(V1beta3Subject instance) {
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
