// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_preconditions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1Preconditions _$V1PreconditionsFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1Preconditions',
      json,
      ($checkedConvert) {
        final val = V1Preconditions(
          resourceVersion:
              $checkedConvert('resourceVersion', (v) => v as String?),
          uid: $checkedConvert('uid', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1PreconditionsToJson(V1Preconditions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('resourceVersion', instance.resourceVersion);
  writeNotNull('uid', instance.uid);
  return val;
}
