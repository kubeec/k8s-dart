// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_status_cause.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1StatusCause _$V1StatusCauseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1StatusCause',
      json,
      ($checkedConvert) {
        final val = V1StatusCause(
          field: $checkedConvert('field', (v) => v as String?),
          message: $checkedConvert('message', (v) => v as String?),
          reason: $checkedConvert('reason', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1StatusCauseToJson(V1StatusCause instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('field', instance.field);
  writeNotNull('message', instance.message);
  writeNotNull('reason', instance.reason);
  return val;
}
