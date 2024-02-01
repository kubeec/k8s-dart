// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_overhead.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1Overhead _$V1OverheadFromJson(Map<String, dynamic> json) => $checkedCreate(
      'V1Overhead',
      json,
      ($checkedConvert) {
        final val = V1Overhead(
          podFixed: $checkedConvert(
              'podFixed',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  )),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1OverheadToJson(V1Overhead instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('podFixed', instance.podFixed);
  return val;
}
