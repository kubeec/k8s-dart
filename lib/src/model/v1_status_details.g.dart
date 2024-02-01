// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_status_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1StatusDetails _$V1StatusDetailsFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1StatusDetails',
      json,
      ($checkedConvert) {
        final val = V1StatusDetails(
          causes: $checkedConvert(
              'causes',
              (v) => (v as List<dynamic>?)
                  ?.map(
                      (e) => V1StatusCause.fromJson(e as Map<String, dynamic>))
                  .toList()),
          group: $checkedConvert('group', (v) => v as String?),
          kind: $checkedConvert('kind', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String?),
          retryAfterSeconds:
              $checkedConvert('retryAfterSeconds', (v) => v as int?),
          uid: $checkedConvert('uid', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1StatusDetailsToJson(V1StatusDetails instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('causes', instance.causes?.map((e) => e.toJson()).toList());
  writeNotNull('group', instance.group);
  writeNotNull('kind', instance.kind);
  writeNotNull('name', instance.name);
  writeNotNull('retryAfterSeconds', instance.retryAfterSeconds);
  writeNotNull('uid', instance.uid);
  return val;
}
