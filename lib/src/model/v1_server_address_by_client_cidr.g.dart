// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_server_address_by_client_cidr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ServerAddressByClientCIDR _$V1ServerAddressByClientCIDRFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ServerAddressByClientCIDR',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['clientCIDR', 'serverAddress'],
        );
        final val = V1ServerAddressByClientCIDR(
          clientCIDR: $checkedConvert('clientCIDR', (v) => v as String),
          serverAddress: $checkedConvert('serverAddress', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ServerAddressByClientCIDRToJson(
        V1ServerAddressByClientCIDR instance) =>
    <String, dynamic>{
      'clientCIDR': instance.clientCIDR,
      'serverAddress': instance.serverAddress,
    };
