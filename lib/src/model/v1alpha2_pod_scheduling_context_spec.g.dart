// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1alpha2_pod_scheduling_context_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1alpha2PodSchedulingContextSpec _$V1alpha2PodSchedulingContextSpecFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1alpha2PodSchedulingContextSpec',
      json,
      ($checkedConvert) {
        final val = V1alpha2PodSchedulingContextSpec(
          potentialNodes: $checkedConvert('potentialNodes',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          selectedNode: $checkedConvert('selectedNode', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1alpha2PodSchedulingContextSpecToJson(
    V1alpha2PodSchedulingContextSpec instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('potentialNodes', instance.potentialNodes);
  writeNotNull('selectedNode', instance.selectedNode);
  return val;
}
