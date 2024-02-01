// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_lease_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1LeaseSpec _$V1LeaseSpecFromJson(Map<String, dynamic> json) => $checkedCreate(
      'V1LeaseSpec',
      json,
      ($checkedConvert) {
        final val = V1LeaseSpec(
          acquireTime: $checkedConvert('acquireTime',
              (v) => v == null ? null : DateTime.parse(v as String)),
          holderIdentity:
              $checkedConvert('holderIdentity', (v) => v as String?),
          leaseDurationSeconds:
              $checkedConvert('leaseDurationSeconds', (v) => v as int?),
          leaseTransitions:
              $checkedConvert('leaseTransitions', (v) => v as int?),
          renewTime: $checkedConvert('renewTime',
              (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1LeaseSpecToJson(V1LeaseSpec instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('acquireTime', instance.acquireTime?.toIso8601String());
  writeNotNull('holderIdentity', instance.holderIdentity);
  writeNotNull('leaseDurationSeconds', instance.leaseDurationSeconds);
  writeNotNull('leaseTransitions', instance.leaseTransitions);
  writeNotNull('renewTime', instance.renewTime?.toIso8601String());
  return val;
}
