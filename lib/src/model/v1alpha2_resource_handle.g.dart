// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1alpha2_resource_handle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1alpha2ResourceHandle _$V1alpha2ResourceHandleFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1alpha2ResourceHandle',
      json,
      ($checkedConvert) {
        final val = V1alpha2ResourceHandle(
          data: $checkedConvert('data', (v) => v as String?),
          driverName: $checkedConvert('driverName', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1alpha2ResourceHandleToJson(
    V1alpha2ResourceHandle instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  writeNotNull('driverName', instance.driverName);
  return val;
}
