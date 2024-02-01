// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_endpoints.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1Endpoints _$V1EndpointsFromJson(Map<String, dynamic> json) => $checkedCreate(
      'V1Endpoints',
      json,
      ($checkedConvert) {
        final val = V1Endpoints(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          kind: $checkedConvert('kind', (v) => v as String?),
          metadata: $checkedConvert(
              'metadata',
              (v) => v == null
                  ? null
                  : V1ObjectMeta.fromJson(v as Map<String, dynamic>)),
          subsets: $checkedConvert(
              'subsets',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      V1EndpointSubset.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1EndpointsToJson(V1Endpoints instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiVersion', instance.apiVersion);
  writeNotNull('kind', instance.kind);
  writeNotNull('metadata', instance.metadata?.toJson());
  writeNotNull('subsets', instance.subsets?.map((e) => e.toJson()).toList());
  return val;
}
