// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_lifecycle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1Lifecycle _$V1LifecycleFromJson(Map<String, dynamic> json) => $checkedCreate(
      'V1Lifecycle',
      json,
      ($checkedConvert) {
        final val = V1Lifecycle(
          postStart: $checkedConvert(
              'postStart',
              (v) => v == null
                  ? null
                  : V1LifecycleHandler.fromJson(v as Map<String, dynamic>)),
          preStop: $checkedConvert(
              'preStop',
              (v) => v == null
                  ? null
                  : V1LifecycleHandler.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1LifecycleToJson(V1Lifecycle instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('postStart', instance.postStart?.toJson());
  writeNotNull('preStop', instance.preStop?.toJson());
  return val;
}
