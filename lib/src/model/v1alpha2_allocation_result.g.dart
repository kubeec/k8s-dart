// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1alpha2_allocation_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1alpha2AllocationResult _$V1alpha2AllocationResultFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1alpha2AllocationResult',
      json,
      ($checkedConvert) {
        final val = V1alpha2AllocationResult(
          availableOnNodes: $checkedConvert(
              'availableOnNodes',
              (v) => v == null
                  ? null
                  : V1NodeSelector.fromJson(v as Map<String, dynamic>)),
          resourceHandles: $checkedConvert(
              'resourceHandles',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1alpha2ResourceHandle.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          shareable: $checkedConvert('shareable', (v) => v as bool?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1alpha2AllocationResultToJson(
    V1alpha2AllocationResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('availableOnNodes', instance.availableOnNodes?.toJson());
  writeNotNull('resourceHandles',
      instance.resourceHandles?.map((e) => e.toJson()).toList());
  writeNotNull('shareable', instance.shareable);
  return val;
}
