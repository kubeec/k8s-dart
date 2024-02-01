// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_endpoint_slice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1EndpointSlice _$V1EndpointSliceFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1EndpointSlice',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['addressType', 'endpoints'],
        );
        final val = V1EndpointSlice(
          addressType: $checkedConvert('addressType', (v) => v as String),
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          endpoints: $checkedConvert(
              'endpoints',
              (v) => (v as List<dynamic>)
                  .map((e) => V1Endpoint.fromJson(e as Map<String, dynamic>))
                  .toList()),
          kind: $checkedConvert('kind', (v) => v as String?),
          metadata: $checkedConvert(
              'metadata',
              (v) => v == null
                  ? null
                  : V1ObjectMeta.fromJson(v as Map<String, dynamic>)),
          ports: $checkedConvert(
              'ports',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => DiscoveryV1EndpointPort.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1EndpointSliceToJson(V1EndpointSlice instance) {
  final val = <String, dynamic>{
    'addressType': instance.addressType,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiVersion', instance.apiVersion);
  val['endpoints'] = instance.endpoints.map((e) => e.toJson()).toList();
  writeNotNull('kind', instance.kind);
  writeNotNull('metadata', instance.metadata?.toJson());
  writeNotNull('ports', instance.ports?.map((e) => e.toJson()).toList());
  return val;
}
