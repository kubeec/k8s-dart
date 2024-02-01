// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1beta3_queuing_configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1beta3QueuingConfiguration _$V1beta3QueuingConfigurationFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1beta3QueuingConfiguration',
      json,
      ($checkedConvert) {
        final val = V1beta3QueuingConfiguration(
          handSize: $checkedConvert('handSize', (v) => v as int?),
          queueLengthLimit:
              $checkedConvert('queueLengthLimit', (v) => v as int?),
          queues: $checkedConvert('queues', (v) => v as int?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1beta3QueuingConfigurationToJson(
    V1beta3QueuingConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('handSize', instance.handSize);
  writeNotNull('queueLengthLimit', instance.queueLengthLimit);
  writeNotNull('queues', instance.queues);
  return val;
}
