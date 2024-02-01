// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_endpoint_subset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1EndpointSubset _$V1EndpointSubsetFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1EndpointSubset',
      json,
      ($checkedConvert) {
        final val = V1EndpointSubset(
          addresses: $checkedConvert(
              'addresses',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      V1EndpointAddress.fromJson(e as Map<String, dynamic>))
                  .toList()),
          notReadyAddresses: $checkedConvert(
              'notReadyAddresses',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      V1EndpointAddress.fromJson(e as Map<String, dynamic>))
                  .toList()),
          ports: $checkedConvert(
              'ports',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      CoreV1EndpointPort.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1EndpointSubsetToJson(V1EndpointSubset instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'addresses', instance.addresses?.map((e) => e.toJson()).toList());
  writeNotNull('notReadyAddresses',
      instance.notReadyAddresses?.map((e) => e.toJson()).toList());
  writeNotNull('ports', instance.ports?.map((e) => e.toJson()).toList());
  return val;
}
