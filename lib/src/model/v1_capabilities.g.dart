// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_capabilities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1Capabilities _$V1CapabilitiesFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1Capabilities',
      json,
      ($checkedConvert) {
        final val = V1Capabilities(
          add: $checkedConvert('add',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          drop: $checkedConvert('drop',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1CapabilitiesToJson(V1Capabilities instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('add', instance.add);
  writeNotNull('drop', instance.drop);
  return val;
}
