// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1beta2_queuing_configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1beta2QueuingConfiguration _$V1beta2QueuingConfigurationFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1beta2QueuingConfiguration',
      json,
      ($checkedConvert) {
        final val = V1beta2QueuingConfiguration(
          handSize: $checkedConvert('handSize', (v) => v as int?),
          queueLengthLimit:
              $checkedConvert('queueLengthLimit', (v) => v as int?),
          queues: $checkedConvert('queues', (v) => v as int?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1beta2QueuingConfigurationToJson(
    V1beta2QueuingConfiguration instance) {
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
