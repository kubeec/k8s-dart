// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_endpoint_hints.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1EndpointHints _$V1EndpointHintsFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1EndpointHints',
      json,
      ($checkedConvert) {
        final val = V1EndpointHints(
          forZones: $checkedConvert(
              'forZones',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1ForZone.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1EndpointHintsToJson(V1EndpointHints instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('forZones', instance.forZones?.map((e) => e.toJson()).toList());
  return val;
}
