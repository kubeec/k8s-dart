// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_ip_block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1IPBlock _$V1IPBlockFromJson(Map<String, dynamic> json) => $checkedCreate(
      'V1IPBlock',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['cidr'],
        );
        final val = V1IPBlock(
          cidr: $checkedConvert('cidr', (v) => v as String),
          except: $checkedConvert('except',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1IPBlockToJson(V1IPBlock instance) {
  final val = <String, dynamic>{
    'cidr': instance.cidr,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('except', instance.except);
  return val;
}
