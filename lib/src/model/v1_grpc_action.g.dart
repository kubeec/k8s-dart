// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_grpc_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1GRPCAction _$V1GRPCActionFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1GRPCAction',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['port'],
        );
        final val = V1GRPCAction(
          port: $checkedConvert('port', (v) => v as int),
          service: $checkedConvert('service', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1GRPCActionToJson(V1GRPCAction instance) {
  final val = <String, dynamic>{
    'port': instance.port,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('service', instance.service);
  return val;
}
