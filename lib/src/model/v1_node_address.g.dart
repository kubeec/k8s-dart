// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_node_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1NodeAddress _$V1NodeAddressFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1NodeAddress',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['address', 'type'],
        );
        final val = V1NodeAddress(
          address: $checkedConvert('address', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1NodeAddressToJson(V1NodeAddress instance) =>
    <String, dynamic>{
      'address': instance.address,
      'type': instance.type,
    };
